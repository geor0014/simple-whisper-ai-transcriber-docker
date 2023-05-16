import whisper

model = whisper.load_model("base")
result = model.transcribe("audio.wav", fp16=False)
print(result["text"])
# save tex to file
with open("result.txt", "w") as f:
    f.write(result["text"])
