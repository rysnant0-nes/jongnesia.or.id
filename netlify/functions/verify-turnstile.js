exports.handler = async (event) => {
  const { token } = JSON.parse(event.body)
  const secret = '0x4AAAAAADvPSABUtuP2jQ38UiJxZK8_Zwk'
  const res = await fetch('https://challenges.cloudflare.com/turnstile/v0/siteverify', {
    method: 'POST',
    headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
    body: `secret=${secret}&response=${token}`
  })
  const data = await res.json()
  return { statusCode: 200, body: JSON.stringify({ success: data.success }) }
}
