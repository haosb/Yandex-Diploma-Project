{{- define "app_envs" }}

{{ $env := (split "-" .Values.global.env)._0 }}

{{- /*
Строчка выше, зачем-то разделяет до дефиса global.env, чтобы потом ниже можно было использовать несколько окружений, по дефолту - дефолт.
*/ -}}

{{- range $name, $map := .Values.app }}
{{- $default := $map._default }}
{{- $value := pluck $env $map | first | default $default }}
- name: {{ $name }}
  value: {{ $value | quote }}

{{- /*
Строчки выше перебирают файл values.yaml app и исходя из env подставляют значения, потом app_envs подставляется в template.
*/ -}}

{{- end}}

{{- range $name, $value := .Values.global }}
- name: {{ $name }}
  value: {{ $value | quote }}

{{- end -}}

{{- /*
Строчки выше автоматически подставляют global переменные, чтобы не приходилось указывать каждую.
*/ -}}

{{- end}}
