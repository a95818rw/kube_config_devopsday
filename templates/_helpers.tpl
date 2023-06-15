{{/*
Common labels
*/}}
{{- define "template.labels" -}}
name: {{ .Release.Name }}
env: {{ .Values.env }}
{{- end }}

{{/*
deployment strategy
*/}}
{{- define "template.strategy" -}}
strategy:
  rollingUpdate:
    maxSurge: {{ .Values.deployment.strategy.maxSurge }}
    maxUnavailable: {{ .Values.deployment.strategy.maxUnavailable }}
  type: {{ .Values.deployment.type }}
{{- end }}

{{/*
livenessProbe
*/}}
{{- define "template.livenessProbe" -}}
livenessProbe:
  httpGet:
    path: {{ .Values.livenessProbe.path }}
    port: {{ .Values.service.port }}
  initialDelaySeconds: {{ .Values.livenessProbe.initialDelaySeconds }}
  timeoutSeconds: {{ .Values.livenessProbe.timeoutSeconds }}
  periodSeconds: {{ .Values.livenessProbe.periodSeconds }}
  failureThreshold: {{ .Values.livenessProbe.failureThreshold }}
{{- end }}
