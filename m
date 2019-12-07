Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB48B115FD0
	for <lists+openwrt-devel@lfdr.de>; Sun,  8 Dec 2019 00:04:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aagMTw9AFhLXHikH9/CGh1ikletGBbZ8iQoN2ULw5+w=; b=Noyn4m1Em4l3OT
	ZF0tLAFvdoYjS+l/D4PPoKhEBUKmQpRVHDAovKR7D15XR0VADSmqVENajdSJG+3vuhNbQ+xq9iV2/
	SlrLhZkHTOF89IoI+bzNIxordmcqpSb7s8wXpnGZragHEGa4gQDW0ntaQE80L1Mel0saNLNiQ7lEC
	GDozTJTH1KSoSZPsnyt28dTJ8qlkXCH+DfZv0t3OBwq6/DvBQj9eJ+hmryXLFchh3Ww+Q9ZP2I1Ns
	uQlgkzkVbYc6VBmEagJPsNcaWw8Lyn3En6wkOjldZlACUqcNPvEZ1O4HaTsHuV7iNP4lt6Ho37pZa
	0FtI32CaKly9qvtyH/7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idj7O-00042F-0K; Sat, 07 Dec 2019 23:04:06 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idj6Q-00037C-Ai
 for openwrt-devel@lists.openwrt.org; Sat, 07 Dec 2019 23:03:09 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id E826041A2;
 Sun,  8 Dec 2019 00:03:03 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id c146b5d3;
 Sun, 8 Dec 2019 00:02:54 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  7 Dec 2019 23:52:56 +0100
Message-Id: <20191207225257.14135-4-ynezz@true.cz>
In-Reply-To: <20191207225257.14135-1-ynezz@true.cz>
References: <20191207225257.14135-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_150306_546929_4E209390 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH uci 4/5] libuci: refactor uci_get_errorstr
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

KiByZXBsYWNlIHN0cmFuZ2UgZXJyb3JfaW5mb1swXT0wIHdpdGggY29tcGxldGUgemVyb2luZyBv
ZiB0aGUgYnVmZmVyCiogbWFrZSB0aGUgZnVuY3Rpb24gYm9keSBzaG9ydGVyIGFuZCBtb3JlIGNs
ZWFyLCBkZWNyZWFzZSBpbmRlbnRhdGlvbgogIGxldmVscwoqIGZpeCBmb3JtYXQgc3RyaW5nIHdh
cm5pbmdzOgoKICAgbGlidWNpLmM6MTcyOjI0OiBlcnJvcjogZm9ybWF0IHN0cmluZyBpcyBub3Qg
YSBzdHJpbmcgbGl0ZXJhbCBbLVdlcnJvciwtV2Zvcm1hdC1ub25saXRlcmFsXQogICBsaWJ1Y2ku
YzoxODE6MTk6IGVycm9yOiBmb3JtYXQgc3RyaW5nIGlzIG5vdCBhIHN0cmluZyBsaXRlcmFsIFst
V2Vycm9yLC1XZm9ybWF0LW5vbmxpdGVyYWxdCgpSZXBvcnRlZC1ieTogUm9zZW4gUGVuZXYgPHJv
c2VucEBnbWFpbC5jb20+ClNpZ25lZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUu
Y3o+Ci0tLQogbGlidWNpLmMgfCA1MSArKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspLCAzMiBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9saWJ1Y2kuYyBiL2xpYnVjaS5jCmluZGV4IGE5ZTcw
ZTg4M2VlMy4uMTQwZWRmMmFkYmIwIDEwMDY0NAotLS0gYS9saWJ1Y2kuYworKysgYi9saWJ1Y2ku
YwpAQCAtMTQwLDUwICsxNDAsMzcgQEAgdWNpX3BlcnJvcihzdHJ1Y3QgdWNpX2NvbnRleHQgKmN0
eCwgY29uc3QgY2hhciAqc3RyKQogdm9pZAogdWNpX2dldF9lcnJvcnN0cihzdHJ1Y3QgdWNpX2Nv
bnRleHQgKmN0eCwgY2hhciAqKmRlc3QsIGNvbnN0IGNoYXIgKnByZWZpeCkKIHsKLQlzdGF0aWMg
Y2hhciBlcnJvcl9pbmZvWzEyOF07CisJc3RhdGljIGNoYXIgZXJyb3JfaW5mb1sxMjhdID0geyAw
IH07CiAJaW50IGVycjsKLQljb25zdCBjaGFyICpmb3JtYXQgPQotCQkiJXMlcyIgLyogcHJlZml4
ICovCi0JCSIlcyVzIiAvKiBmdW5jdGlvbiAqLwotCQkiJXMiIC8qIGVycm9yICovCi0JCSIlcyI7
IC8qIGRldGFpbHMgKi8KLQotCWVycm9yX2luZm9bMF0gPSAwOwotCi0JaWYgKCFjdHgpCi0JCWVy
ciA9IFVDSV9FUlJfSU5WQUw7Ci0JZWxzZQotCQllcnIgPSBjdHgtPmVycjsKIAorCWVyciA9IGN0
eCA/IGN0eC0+ZXJyIDogVUNJX0VSUl9JTlZBTDsKIAlpZiAoKGVyciA8IDApIHx8IChlcnIgPj0g
VUNJX0VSUl9MQVNUKSkKIAkJZXJyID0gVUNJX0VSUl9VTktOT1dOOwogCi0Jc3dpdGNoIChlcnIp
IHsKLQljYXNlIFVDSV9FUlJfUEFSU0U6Ci0JCWlmIChjdHgtPnBjdHgpIHsKLQkJCXNucHJpbnRm
KGVycm9yX2luZm8sIHNpemVvZihlcnJvcl9pbmZvKSAtIDEsICIgKCVzKSBhdCBsaW5lICVkLCBi
eXRlICVkIiwgKGN0eC0+cGN0eC0+cmVhc29uID8gY3R4LT5wY3R4LT5yZWFzb24gOiAidW5rbm93
biIpLCBjdHgtPnBjdHgtPmxpbmUsIGN0eC0+cGN0eC0+Ynl0ZSk7Ci0JCQlicmVhazsKLQkJfQot
CQlicmVhazsKLQlkZWZhdWx0OgotCQlicmVhazsKKwlpZiAoY3R4ICYmIGN0eC0+cGN0eCAmJiAo
ZXJyID09IFVDSV9FUlJfUEFSU0UpKSB7CisJCXNucHJpbnRmKGVycm9yX2luZm8sIHNpemVvZihl
cnJvcl9pbmZvKSAtIDEsICIgKCVzKSBhdCBsaW5lICVkLCBieXRlICVkIiwKKwkJCSAoY3R4LT5w
Y3R4LT5yZWFzb24gPyBjdHgtPnBjdHgtPnJlYXNvbiA6ICJ1bmtub3duIiksCisJCQkgY3R4LT5w
Y3R4LT5saW5lLCBjdHgtPnBjdHgtPmJ5dGUpOwogCX0KLQlpZiAoZGVzdCkgewotCQllcnIgPSBh
c3ByaW50ZihkZXN0LCBmb3JtYXQsCi0JCQkocHJlZml4ID8gcHJlZml4IDogIiIpLCAocHJlZml4
ID8gIjogIiA6ICIiKSwKLQkJCShjdHggJiYgY3R4LT5mdW5jID8gY3R4LT5mdW5jIDogIiIpLCAo
Y3R4ICYmIGN0eC0+ZnVuYyA/ICI6ICIgOiAiIiksCi0JCQl1Y2lfZXJyc3RyW2Vycl0sCi0JCQll
cnJvcl9pbmZvKTsKLQkJaWYgKGVyciA8IDApCi0JCQkqZGVzdCA9IE5VTEw7Ci0JfSBlbHNlIHsK
KworCWlmICghZGVzdCkgewogCQlzdHJjYXQoZXJyb3JfaW5mbywgIlxuIik7Ci0JCWZwcmludGYo
c3RkZXJyLCBmb3JtYXQsCisJCWZwcmludGYoc3RkZXJyLCAiJXMlcyVzJXMlcyVzIiwKIAkJCShw
cmVmaXggPyBwcmVmaXggOiAiIiksIChwcmVmaXggPyAiOiAiIDogIiIpLAogCQkJKGN0eCAmJiBj
dHgtPmZ1bmMgPyBjdHgtPmZ1bmMgOiAiIiksIChjdHggJiYgY3R4LT5mdW5jID8gIjogIiA6ICIi
KSwKIAkJCXVjaV9lcnJzdHJbZXJyXSwKIAkJCWVycm9yX2luZm8pOworCQlyZXR1cm47CiAJfQor
CisJZXJyID0gYXNwcmludGYoZGVzdCwgIiVzJXMlcyVzJXMlcyIsCisJCShwcmVmaXggPyBwcmVm
aXggOiAiIiksIChwcmVmaXggPyAiOiAiIDogIiIpLAorCQkoY3R4ICYmIGN0eC0+ZnVuYyA/IGN0
eC0+ZnVuYyA6ICIiKSwgKGN0eCAmJiBjdHgtPmZ1bmMgPyAiOiAiIDogIiIpLAorCQl1Y2lfZXJy
c3RyW2Vycl0sCisJCWVycm9yX2luZm8pOworCisJaWYgKGVyciA8IDApCisJCSpkZXN0ID0gTlVM
TDsKIH0KIAogaW50IHVjaV9saXN0X2NvbmZpZ3Moc3RydWN0IHVjaV9jb250ZXh0ICpjdHgsIGNo
YXIgKioqbGlzdCkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3Blbndy
dC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQt
ZGV2ZWwK
