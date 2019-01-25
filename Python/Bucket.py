class Bucket:
    def __init__(self, size):
        self.items = [ None ] * size
    
    def __str__(self):
        st = "This bucket contains: \n\n"
        for i in self.items:
            st = st + str(i) + "\n"
        return st

    def __getitem__(self, index):
        return self.items[index]

    def __setitem__(self, key, value):
        self.items[key] = value

    def __add__(self, other_bucket):
        new_bucket = Bucket(len(self.items) + len(other_bucket.items))
        new_bucket.items = self.items + other_bucket.items
        return new_bucket
