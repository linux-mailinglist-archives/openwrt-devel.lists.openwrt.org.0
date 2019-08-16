Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB0C90454
	for <lists+openwrt-devel@lfdr.de>; Fri, 16 Aug 2019 17:05:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JgM92/IXdvGYtAMP+vnbbq1XJs+4QN4FyRWsmTpbPGU=; b=RrBT8V20fdjoSr
	2ee5s57yt4n3i9v7E4WaFPau6tMS7kMpMjToBi2lkjB/BFTWqIZ5zw9ZfL7s+HgFANGdqTtS+m7rj
	XVzZdoGckjrIIDd/8jE+hjsQWXMDyio0mmb4asM7kE3JjHD2EHYbBG4m0Ho1rzrewKsFjIysIqcAY
	L1rKRY1TFw8ixg9HJW1Jj+E3B298YCJiFfFJlW+DvC0BjtdQ2QvXo3AAiREe1GJWa+kid9MyQ2q5s
	BiQkshhWfpUHijG8h4Lxlj5E1HydKu0c+PYq29wkCUyarM0q00OoeCFkd+xuYsXQ3zm+sNrAFfg2y
	R00F/SGsIw312IRNj4WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hydnT-0000yg-NO; Fri, 16 Aug 2019 15:05:43 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hydnG-0000xx-Ql
 for openwrt-devel@lists.openwrt.org; Fri, 16 Aug 2019 15:05:34 +0000
Received: by mail-lf1-x143.google.com with SMTP id b29so4287576lfq.1
 for <openwrt-devel@lists.openwrt.org>; Fri, 16 Aug 2019 08:05:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0OxlwDfb3nu5prCQclWPP23dcNNKf7enlvT927qD9AY=;
 b=iVs3BG1Kmak3g5WLPc9tPnzgcPb+BfzUXXXKsYucoWsdq2jNcq2s+kEfiCsdIULNNO
 8xz+Wa+5yY9yaKAXrCKQe/i0Rmcz6VyUP3yNs3VMXAOQUqS9Gahk6riFyvzNGURGa98E
 7quf9UCoAKcAWC35291rDYI7JX0P2+534+wmslwwLgI+/ODxLxXY0WFiRAG3SzBbYdOy
 nXvavL6vrfeVIJLDpWwBr/GqrdYyH+nYjCJeQYFV8U8UeTnHIM0MCGnWaa1Lm4EWI3ko
 0BkenKniYWGtc/zr+e5uSOo0GG3ILEOIB2IDK17EVjZq4fKdrNk8Q0kwr8pdv1VvM8PY
 IBrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0OxlwDfb3nu5prCQclWPP23dcNNKf7enlvT927qD9AY=;
 b=UsG0R2IN1pcVR5reaV/dEtf8ULFglnh+sppcZIJLZTWtKBDEez5pXzzX10UUEfjqnk
 aBEY/a/aUtlvNrBpEkfdaFZLY/X/5KehnmRSyqtccLPbzVFuzPFL13bteTzpUrxszF5F
 KKj+BfSzabaay1yXLcJ4Vv4nu1ytwO2WGo9pHjXMfR4LKEqhErkjMRi9nzEeDcvGfhgs
 IZeTIHWPIEBw/LB+9Lj0KUIm/l43xEH/gK4r3L/pW8QbuzwrVf6nYyx7Nqduz6+TcttB
 KEAB/mzX8YS43LyPhHMc32gHZPNMWomos5PN7lLgnCHtNxiaAjYZPhlLzDU65DGi1Oep
 xRgg==
X-Gm-Message-State: APjAAAVb61OCy53VT0IqrmzWnzqPC+tHpcx5Q9fmY7YiltFqgaXFUsi8
 /t1WkIX2+uFdVy+Q5RL2MizVpXdJ
X-Google-Smtp-Source: APXvYqw3TygkzJS18Pdqd9Lc2zZiFsL/1kec6eVaOOO7osjqaNR8iFrlVcYBZNV6gBWa/3HR2BlIig==
X-Received: by 2002:ac2:5442:: with SMTP id d2mr5751314lfn.70.1565967928762;
 Fri, 16 Aug 2019 08:05:28 -0700 (PDT)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id w21sm961810lfl.84.2019.08.16.08.05.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 16 Aug 2019 08:05:28 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 16 Aug 2019 17:05:16 +0200
Message-Id: <20190816150517.29633-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_080533_355785_DDB986B5 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 1/2] base-files: pass "save_config" option
 to the "sysupgrade" method
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
Cc: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
 Jo-Philipp Wich <jo@mein.io>, John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKVGhpcyBleHBsaWNpdGx5
IGxldHMgc3RhZ2UyIGtub3cgaWYgY29uZmlnIHNob3VsZCBiZSBwcmVzZXJ2ZWQuCgpTaWduZWQt
b2ZmLWJ5OiBSYWZhxYIgTWnFgmVja2kgPHJhZmFsQG1pbGVja2kucGw+Ci0tLQogcGFja2FnZS9i
YXNlLWZpbGVzL2ZpbGVzL2xpYi91cGdyYWRlL2NvbW1vbi5zaCB8IDIgKy0KIHBhY2thZ2UvYmFz
ZS1maWxlcy9maWxlcy9saWIvdXBncmFkZS9kb19zdGFnZTIgfCAyICstCiBwYWNrYWdlL2Jhc2Ut
ZmlsZXMvZmlsZXMvbGliL3VwZ3JhZGUvc3RhZ2UyICAgIHwgMiAtLQogcGFja2FnZS9iYXNlLWZp
bGVzL2ZpbGVzL3NiaW4vc3lzdXBncmFkZSAgICAgICB8IDUgKysrKy0KIDQgZmlsZXMgY2hhbmdl
ZCwgNiBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3BhY2thZ2Uv
YmFzZS1maWxlcy9maWxlcy9saWIvdXBncmFkZS9jb21tb24uc2ggYi9wYWNrYWdlL2Jhc2UtZmls
ZXMvZmlsZXMvbGliL3VwZ3JhZGUvY29tbW9uLnNoCmluZGV4IDJhZmEwYWRkYjQuLmVmYTMwMWNk
OTUgMTAwNjQ0Ci0tLSBhL3BhY2thZ2UvYmFzZS1maWxlcy9maWxlcy9saWIvdXBncmFkZS9jb21t
b24uc2gKKysrIGIvcGFja2FnZS9iYXNlLWZpbGVzL2ZpbGVzL2xpYi91cGdyYWRlL2NvbW1vbi5z
aApAQCAtMjE4LDcgKzIxOCw3IEBAIGluZGljYXRlX3VwZ3JhZGUoKSB7CiAjICQoMik6IChvcHRp
b25hbCkgcGlwZSBjb21tYW5kIHRvIGV4dHJhY3QgZmlybXdhcmUsIGUuZy4gZGQgYnM9biBza2lw
PW0KIGRlZmF1bHRfZG9fdXBncmFkZSgpIHsKIAlzeW5jCi0JaWYgWyAiJFNBVkVfQ09ORklHIiAt
ZXEgMSBdOyB0aGVuCisJaWYgWyAiJFVQR1JBREVfT1BUX1NBVkVfQ09ORklHIiAtZXEgMSBdOyB0
aGVuCiAJCWdldF9pbWFnZSAiJDEiICIkMiIgfCBtdGQgJE1URF9BUkdTICRNVERfQ09ORklHX0FS
R1MgLWogIiRDT05GX1RBUiIgd3JpdGUgLSAiJHtQQVJUX05BTUU6LWltYWdlfSIKIAllbHNlCiAJ
CWdldF9pbWFnZSAiJDEiICIkMiIgfCBtdGQgJE1URF9BUkdTIHdyaXRlIC0gIiR7UEFSVF9OQU1F
Oi1pbWFnZX0iCmRpZmYgLS1naXQgYS9wYWNrYWdlL2Jhc2UtZmlsZXMvZmlsZXMvbGliL3VwZ3Jh
ZGUvZG9fc3RhZ2UyIGIvcGFja2FnZS9iYXNlLWZpbGVzL2ZpbGVzL2xpYi91cGdyYWRlL2RvX3N0
YWdlMgppbmRleCA4YWFlNDUyNTYwLi4wZTZjYzFiZmMzIDEwMDc1NQotLS0gYS9wYWNrYWdlL2Jh
c2UtZmlsZXMvZmlsZXMvbGliL3VwZ3JhZGUvZG9fc3RhZ2UyCisrKyBiL3BhY2thZ2UvYmFzZS1m
aWxlcy9maWxlcy9saWIvdXBncmFkZS9kb19zdGFnZTIKQEAgLTExLDcgKzExLDcgQEAgZWxzZQog
CWRlZmF1bHRfZG9fdXBncmFkZSAiJElNQUdFIgogZmkKIAotaWYgWyAiJFNBVkVfQ09ORklHIiAt
ZXEgMSBdICYmIHR5cGUgJ3BsYXRmb3JtX2NvcHlfY29uZmlnJyA+L2Rldi9udWxsIDI+L2Rldi9u
dWxsOyB0aGVuCitpZiBbICIkVVBHUkFERV9PUFRfU0FWRV9DT05GSUciIC1lcSAxIF0gJiYgdHlw
ZSAncGxhdGZvcm1fY29weV9jb25maWcnID4vZGV2L251bGwgMj4vZGV2L251bGw7IHRoZW4KIAlw
bGF0Zm9ybV9jb3B5X2NvbmZpZwogZmkKIApkaWZmIC0tZ2l0IGEvcGFja2FnZS9iYXNlLWZpbGVz
L2ZpbGVzL2xpYi91cGdyYWRlL3N0YWdlMiBiL3BhY2thZ2UvYmFzZS1maWxlcy9maWxlcy9saWIv
dXBncmFkZS9zdGFnZTIKaW5kZXggZmVmMTIxZjM3Yy4uNGU1ODM3YWY4MyAxMDA3NTUKLS0tIGEv
cGFja2FnZS9iYXNlLWZpbGVzL2ZpbGVzL2xpYi91cGdyYWRlL3N0YWdlMgorKysgYi9wYWNrYWdl
L2Jhc2UtZmlsZXMvZmlsZXMvbGliL3VwZ3JhZGUvc3RhZ2UyCkBAIC02LDcgKzYsNiBAQAogZXhw
b3J0IElNQUdFPSIkMSIKIENPTU1BTkQ9IiQyIgogCi1leHBvcnQgU0FWRV9DT05GSUc9MQogZXhw
b3J0IFNBVkVfUEFSVElUSU9OUz0xCiAKIGV4cG9ydCBJTlRFUkFDVElWRT0wCkBAIC0xOCw3ICsx
Nyw2IEBAIFJBTUZTX0NPUFlfQklOPQkJIyBleHRyYSBwcm9ncmFtcyBmb3IgdGVtcG9yYXJ5IHJh
bWZzIHJvb3QKIFJBTUZTX0NPUFlfREFUQT0JIyBleHRyYSBkYXRhIGZpbGVzCiAKIAotWyAtZiAi
JENPTkZfVEFSIiBdIHx8IGV4cG9ydCBTQVZFX0NPTkZJRz0wCiBbIC1mIC90bXAvc3lzdXBncmFk
ZS5hbHdheXMub3ZlcndyaXRlLmJvb3RkaXNrLnBhcnRtYXAgXSAmJiBleHBvcnQgU0FWRV9QQVJU
SVRJT05TPTAKIAogaW5jbHVkZSAvbGliL3VwZ3JhZGUKZGlmZiAtLWdpdCBhL3BhY2thZ2UvYmFz
ZS1maWxlcy9maWxlcy9zYmluL3N5c3VwZ3JhZGUgYi9wYWNrYWdlL2Jhc2UtZmlsZXMvZmlsZXMv
c2Jpbi9zeXN1cGdyYWRlCmluZGV4IDAwMWU2NDQ0NzYuLjE1NTE0MTU5YjMgMTAwNzU1Ci0tLSBh
L3BhY2thZ2UvYmFzZS1maWxlcy9maWxlcy9zYmluL3N5c3VwZ3JhZGUKKysrIGIvcGFja2FnZS9i
YXNlLWZpbGVzL2ZpbGVzL3NiaW4vc3lzdXBncmFkZQpAQCAtMzY5LDYgKzM2OSw5IEBAIGVsc2UK
IAl1YnVzIGNhbGwgc3lzdGVtIHN5c3VwZ3JhZGUgInsKIAkJXCJwcmVmaXhcIjogJChqc29uX3N0
cmluZyAiJFJBTV9ST09UIiksCiAJCVwicGF0aFwiOiAkKGpzb25fc3RyaW5nICIkSU1BR0UiKSwK
LQkJXCJjb21tYW5kXCI6ICQoanNvbl9zdHJpbmcgIiRDT01NQU5EIikKKwkJXCJjb21tYW5kXCI6
ICQoanNvbl9zdHJpbmcgIiRDT01NQU5EIiksCisJCVwib3B0aW9uc1wiOiB7CisJCQlcInNhdmVf
Y29uZmlnXCI6ICRTQVZFX0NPTkZJRworCQl9CiAJfSIKIGZpCi0tIAoyLjIxLjAKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1h
aWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMu
b3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
