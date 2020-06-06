Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D401F0679
	for <lists+openwrt-devel@lfdr.de>; Sat,  6 Jun 2020 14:24:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JbKPHGrjCueF67POP+HBapRUuIB/1HG/1LoZ+/4E3o0=; b=Kfpdytt+0b8BzV
	8VKR5RJe1YhKCraDYydHg/RnxktnuX4yhWsrlXTlsQmH81KUZwfV7idOGYYn2UYZvI9QsUSYvZ+8P
	KLeBc5z9VATtmFgIcGjhQ+V8h69+OpoX8UKRD8GIKP3pSBis80Lekh9cI6TJ8V0/k85l3uh8hRjwB
	5r9P3o6frerNiCfq2wC9kcBP4lK8HxYfF0EhZG3G5TP0HLc22+eek7hjZjkHaY+W5Shnso4HTymYq
	UxKKAK8+zyBPoZWIcWe9rMaCCr7R+NoH5v+3gsgLXwAEJePwF3j8J94D12UbK4ml6Bfv3whW8dRWx
	yylHv3KYhn+XE67UU0dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhXsB-0007qh-Iw; Sat, 06 Jun 2020 12:24:27 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhXs4-0007pF-Bs
 for openwrt-devel@lists.openwrt.org; Sat, 06 Jun 2020 12:24:21 +0000
Received: by mail-wr1-x441.google.com with SMTP id h5so12398073wrc.7
 for <openwrt-devel@lists.openwrt.org>; Sat, 06 Jun 2020 05:24:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Y4JPdSSfh1+CdrxNwu7ucqZfZxWSKTJ1dKTADaHygpQ=;
 b=TvJxAsG3xDQE1oLCRK+NiQwHGJXQ3uMgcn7XvYV4UsHtt/fpY59AVI1/xGpu7XpZaW
 Ccok4vHeWI0uQOUqFJye1ULroN2FtNTVt6MVaTWZaoTUURA0HMqvRWPnmA+W6qhQJWus
 VDu4KOqVPxbd3YCE4PsGlKxbEIszyMLwQlJNbZt2ChTGp3HckU8EP0JbV32u8u7xFmeu
 g/RwoPxjg/Qnc5/OzA+GBAsgk1Num17UpsPGJQRNmUtZaC3B20Z6pA9yi2ljoiF+1PZz
 ygcseWRP3l0l/u+Ir7AvUBVtKbRadZG7/WnbHGq7ecm4A9Nal274U4x1B9kTgE/bO4ze
 sQLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Y4JPdSSfh1+CdrxNwu7ucqZfZxWSKTJ1dKTADaHygpQ=;
 b=UHeOXQtqKHq33bXVTxHnNlC46Z7WQ1zhI4JWTlK/+yDXD0VJCYAUVeYQFdlcDePahq
 HUr9WLzcUCKxd6OWu+NlQuFc8kRc4VdoJwmnsl/TGxv+u1tlsV6+3lBjlWysiGSWx5RF
 nB7gTmnahYOoC1lSX0wpwzrWaHHhdjn5o4DhyoKurM10FqkHGCFwmf49hfEKZKTKgDe/
 qtRoV83GE55bTS3auWB+tJZxSZCLyxoHAT82JWYivBSASoUtkjk/2uHazk3HpCeUy4T4
 0n3Wb4aWIhM03TnuUETyKn/BTkj0otFa5bhzo+0+Bc/vM2KyyiLP5mlI1ge/+aNRldZ+
 I4VQ==
X-Gm-Message-State: AOAM5311gt4xjNr/GQ9WwkfmlCEekiYdCkFGJigjdN2+bmYHm8kZT0gx
 6CLDZSLygNwYhq3W1s1HgeF+BeAW
X-Google-Smtp-Source: ABdhPJwadt1MSwxr9lOsufMIk/yiscW38Styun81qL/bKZRpnkGPfUZpberxnruPybBW8lLMpWtJcg==
X-Received: by 2002:adf:e749:: with SMTP id c9mr15404749wrn.25.1591446258657; 
 Sat, 06 Jun 2020 05:24:18 -0700 (PDT)
Received: from tool.localnet ([213.177.197.81])
 by smtp.googlemail.com with ESMTPSA id o10sm16449173wrj.37.2020.06.06.05.24.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 06 Jun 2020 05:24:17 -0700 (PDT)
From: Daniel =?ISO-8859-1?Q?Gonz=E1lez?= Cabanelas <dgcbueu@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 06 Jun 2020 14:21:41 +0200
Message-ID: <2843202.Nf0WbgkuB9@tool>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200606_052420_409587_665B7AC6 
X-CRM114-Status: UNSURE (   6.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dgcbueu[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 3/4 v3] bcm63xx: image: allow to pass the
 addr to the NAND kernel header
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: noltari@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Tm90IGFsbCBDRkVzIHdpbGwgbmVlZCB0byByZWxvY2F0ZSB0aGUga2VybmVsIChpLmUgSDUwMC1z
KSwgdGhlcmVmb3JlCndlJ2xsIG5lZWQgdG8gcGFzcyBhIGRpZmZlcmVudCBhZGRyZXNzIGFuZCBu
b3QgdGhlIExPQURFUl9FTlRSWS4KCkxldCB0byBwYXNzIHRoZSBhZGRyIHRvIHRoZSBpbWFnZSBj
cmVhdGlvbiB3aGVuIG5lY2Nlc3NhcnkuCgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgR29uesOhbGV6
IENhYmFuZWxhcyA8ZGdjYnVldUBnbWFpbC5jb20+Ci0tLQpDaGFuZ2VzIGluIHYyOiByZWZyZXNo
CkNoYW5nZXMgaW4gdjM6IG5vbmUKCiB0YXJnZXQvbGludXgvYmNtNjN4eC9pbWFnZS9NYWtlZmls
ZSB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvYmNtNjN4eC9pbWFnZS9NYWtlZmlsZSBiL3Rh
cmdldC9saW51eC9iY202M3h4L2ltYWdlL01ha2VmaWxlCmluZGV4IGM5NjJlNTMxYTkuLjA1OTNk
YWNiNDQgMTAwNjQ0Ci0tLSBhL3RhcmdldC9saW51eC9iY202M3h4L2ltYWdlL01ha2VmaWxlCisr
KyBiL3RhcmdldC9saW51eC9iY202M3h4L2ltYWdlL01ha2VmaWxlCkBAIC0xNzIsOCArMTcyLDgg
QEAgZGVmaW5lIEJ1aWxkL2NmZS1qZmZzMi1rZXJuZWwKIAkkKFRPUERJUikvc2NyaXB0cy9jZmUt
YmluLWhlYWRlci5weSBcCiAJCS0taW5wdXQtZmlsZSAkQCBcCiAJCS0tb3V0cHV0LWZpbGUgJEAt
a2VybmVsL3ZtbGludXgubHogXAotCQktLWxvYWQtYWRkciAkKExPQURFUl9FTlRSWSkgXAotCQkt
LWVudHJ5LWFkZHIgJChMT0FERVJfRU5UUlkpCisJCS0tbG9hZC1hZGRyICQoaWYgJCgxKSwkKDEp
LCQoTE9BREVSX0VOVFJZKSkgXAorCQktLWVudHJ5LWFkZHIgJChpZiAkKDEpLCQoMSksJChMT0FE
RVJfRU5UUlkpKQogCiAJIyBUaGUgSkZGUzIgcGFydGl0aW9uIGNyZWF0aW9uIHNob3VsZCByZXN1
bHQgaW4gdGhlIGZvbGxvd2luZwogCSMgbGF5b3V0OgotLSAKMi4yNy4wCgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGlu
ZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVu
d3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
