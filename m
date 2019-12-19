Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C8BD127079
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Dec 2019 23:14:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XNgFNALV3xGYeW29ijQqJMJlNndvSnXhCATT6R/Q7MY=; b=qoD0GexoWV7EQB
	2g3R0Hw3ztI1MNQj5k9QRbGsfpRTuGL3touNkLMmkxgq1d/Dd+U4zxPzQNnoODAx6VU4mRZsKLcBM
	H1oQZLcEwmsbsSIB74Qr/Hn9T3x9sLKE2XxdyuApoD2oT7yz6zdkd8boaGwUTGhXpfJqzpVMEb5HJ
	zQ/doojQYLjUhoX7A+pWX8EC1Nm0+lfhtcvu4ALADBbv4J3yDvN1fxVRkfADN1pOKWw3vjsJjZUgq
	7OtDCjU7EUsW5ToSWn7k3vvDvf2U8714R/lNAkdIAV3W/Jn5n1Y4mMbVBGElXYPy7wmGvtPWhxu/I
	7otNKSbYBhzkjepVbCUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii43h-0000XI-QI; Thu, 19 Dec 2019 22:14:13 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii41L-00054u-Ch
 for openwrt-devel@lists.openwrt.org; Thu, 19 Dec 2019 22:11:51 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id A7ABA4BCC;
 Thu, 19 Dec 2019 23:11:45 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id c1d5be37;
 Thu, 19 Dec 2019 23:11:35 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 19 Dec 2019 23:11:19 +0100
Message-Id: <20191219221125.22646-11-ynezz@true.cz>
In-Reply-To: <20191219221125.22646-1-ynezz@true.cz>
References: <20191219221125.22646-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_141147_609926_F66EC3ED 
X-CRM114-Status: UNSURE (   8.25  )
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
Subject: [OpenWrt-Devel] [PATCH ubus 10/16] lua: workaround false positive
 dereference of null pointer
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

c2Nhbi1idWlsZCBmcm9tIGNsYW5nLTkgaGFzIHJlcG9ydGVkIGZvbGxvd2luZzoKCiB1YnVzLmM6
ODM3OjE2OiB3YXJuaW5nOiBBY2Nlc3MgdG8gZmllbGQgJ3Jub3RpZnknIHJlc3VsdHMgaW4gYSBk
ZXJlZmVyZW5jZSBvZiBhIG51bGwgcG9pbnRlciAobG9hZGVkIGZyb20gdmFyaWFibGUgJ3N1Yicp
CiAgICAgICAgICAgICAgICAgc3ViLT5ybm90aWZ5ID0gbHVhTF9yZWYoTCwgLTIpOwoKV2hpY2gg
aXMgZmFsc2UgcG9zaXRpdmUgYXMgdGhlIGx1YV9lcnJvcigpIGRvZXMgYSBsb25nIGp1bXAgYW5k
CnRoZXJlZm9yZSBuZXZlciByZXR1cm5zIGFuZCB0aGlzIGxvbmcganVtcCBwcm9iYWJseSBjb25m
dXNlcyB0aGUgc3RhdGljCmFuYWx5emVyLiBTbyB0aGlzIHBhdGNoIHdvcmthcm91bmRzIHRoaXMg
ZmFsc2UgcG9zaXRpdmUgYnkgaGVscGluZwpzdGF0aWMgYW5hbHl6ZXIgYnkgdXNpbmcgY29tbW9u
IEx1YSBpZGlvbSB3aGljaCBpcyB0byByZXR1cm4KbHVhX2Vycm9yKCkncyByZXR1cm4gdmFsdWUu
CgpSZWY6IGh0dHBzOi8vd3d3Lmx1YS5vcmcvbWFudWFsLzUuMS9tYW51YWwuaHRtbCNsdWFfZXJy
b3IKQWRkcmVzc2VzLUNvdmVyaXR5LUlEOiAxNDEyMzU1ICgiRGVyZWZlcmVuY2UgYWZ0ZXIgbnVs
bCBjaGVjayIpClNpZ25lZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Ci0t
LQogbHVhL3VidXMuYyB8IDE5ICsrKysrKysrKystLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAx
MCBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2x1YS91YnVzLmMg
Yi9sdWEvdWJ1cy5jCmluZGV4IDZmYmJjMDY4NmFmMy4uZmI1MDQxOGQyN2IwIDEwMDY0NAotLS0g
YS9sdWEvdWJ1cy5jCisrKyBiL2x1YS91YnVzLmMKQEAgLTU1Nyw4ICs1NTcsNyBAQCBzdGF0aWMg
aW50IHVidXNfbHVhX2FkZChsdWFfU3RhdGUgKkwpCiAJLyogdmVyaWZ5IHRvcCBsZXZlbCBvYmpl
Y3QgKi8KIAlpZiAobHVhX2lzdGFibGUoTCwgMSkpIHsKIAkJbHVhX3B1c2hzdHJpbmcoTCwgInlv
dSBuZWVkIHRvIHBhc3MgYSB0YWJsZSIpOwotCQlsdWFfZXJyb3IoTCk7Ci0JCXJldHVybiAwOwor
CQlyZXR1cm4gbHVhX2Vycm9yKEwpOwogCX0KIAogCS8qIHNjYW4gZWFjaCBvYmplY3QgKi8KQEAg
LTU5OCw3ICs1OTcsNyBAQCB1YnVzX2x1YV9ub3RpZnkoIGx1YV9TdGF0ZSAqTCApCiAKIAlpZigg
IWx1YV9pc2xpZ2h0dXNlcmRhdGEoIEwsIDIgKSApewogCQlsdWFfcHVzaGZzdHJpbmcoIEwsICJJ
bnZhbGQgMm5kIHBhcmFtZXRlciwgZXhwZWN0ZWQgdWJ1cyBvYmogcmVmIiApOwotCQlsdWFfZXJy
b3IoIEwgKTsKKwkJcmV0dXJuIGx1YV9lcnJvciggTCApOwogCX0KIAlvYmogPSBsdWFfdG91c2Vy
ZGF0YSggTCwgMiApOwogCkBAIC02MDYsNyArNjA1LDcgQEAgdWJ1c19sdWFfbm90aWZ5KCBsdWFf
U3RhdGUgKkwgKQogCWJsb2JfYnVmX2luaXQoJmMtPmJ1ZiwgMCk7CiAJaWYoICF1YnVzX2x1YV9m
b3JtYXRfYmxvYl9hcnJheSggTCwgJmMtPmJ1ZiwgdHJ1ZSApICl7CiAJCWx1YV9wdXNoZnN0cmlu
ZyggTCwgIkludmFsaWQgNHRoIHBhcmFtZXRlciwgZXhwZWN0ZWQgdGFibGUgb2YgYXJndW1lbnRz
IiApOwotCQlsdWFfZXJyb3IoIEwgKTsKKwkJcmV0dXJuIGx1YV9lcnJvciggTCApOwogCX0KIAog
CXVidXNfbm90aWZ5KCBjLT5jdHgsIG9iaiwgbWV0aG9kLCBjLT5idWYuaGVhZCwgLTEgKTsKQEAg
LTgxMiw3ICs4MTEsNyBAQCB1YnVzX3N1Yl9ub3RpZnlfaGFuZGxlcihzdHJ1Y3QgdWJ1c19jb250
ZXh0ICpjdHgsIHN0cnVjdCB1YnVzX29iamVjdCAqb2JqLAogCiAKIAotc3RhdGljIHZvaWQKK3N0
YXRpYyBpbnQKIHVidXNfbHVhX2RvX3N1YnNjcmliZSggc3RydWN0IHVidXNfY29udGV4dCAqY3R4
LCBsdWFfU3RhdGUgKkwsIGNvbnN0IGNoYXIqIHRhcmdldCwKICAgICAgICAgICAgICAgICAgICAg
ICAgIGludCBpZHhub3RpZnksIGludCBpZHhyZW1vdmUgKQogewpAQCAtODIyLDEzICs4MjEsMTMg
QEAgdWJ1c19sdWFfZG9fc3Vic2NyaWJlKCBzdHJ1Y3QgdWJ1c19jb250ZXh0ICpjdHgsIGx1YV9T
dGF0ZSAqTCwgY29uc3QgY2hhciogdGFyZ2UKIAogCWlmKCAoIHN0YXR1cyA9IHVidXNfbG9va3Vw
X2lkKCBjdHgsIHRhcmdldCwgJmlkICkgKSApewogCQlsdWFfcHVzaGZzdHJpbmcoIEwsICJVbmFi
bGUgZmluZCB0YXJnZXQsIHN0YXR1cz0lZCIsIHN0YXR1cyApOwotCQlsdWFfZXJyb3IoIEwgKTsK
KwkJcmV0dXJuIGx1YV9lcnJvciggTCApOwogCX0KIAogCXN1YiA9IGNhbGxvYyggMSwgc2l6ZW9m
KCBzdHJ1Y3QgdWJ1c19sdWFfc3Vic2NyaWJlciApICk7CiAJaWYoICFzdWIgKXsKIAkJbHVhX3B1
c2hzdHJpbmcoIEwsICJPdXQgb2YgbWVtb3J5IiApOwotCQlsdWFfZXJyb3IoIEwgKTsKKwkJcmV0
dXJuIGx1YV9lcnJvciggTCApOwogCX0KIAogCWlmKCBpZHhub3RpZnkgKXsKQEAgLTg0OSwxMyAr
ODQ4LDE1IEBAIHVidXNfbHVhX2RvX3N1YnNjcmliZSggc3RydWN0IHVidXNfY29udGV4dCAqY3R4
LCBsdWFfU3RhdGUgKkwsIGNvbnN0IGNoYXIqIHRhcmdlCiAKIAlpZiggKCBzdGF0dXMgPSB1YnVz
X3JlZ2lzdGVyX3N1YnNjcmliZXIoIGN0eCwgJnN1Yi0+cyApICkgKXsKIAkJbHVhX3B1c2hmc3Ry
aW5nKCBMLCAiRmFpbGVkIHRvIHJlZ2lzdGVyIHN1YnNjcmliZXIsIHN0YXR1cz0lZCIsIHN0YXR1
cyApOwotCQlsdWFfZXJyb3IoIEwgKTsKKwkJcmV0dXJuIGx1YV9lcnJvciggTCApOwogCX0KIAog
CWlmKCAoIHN0YXR1cyA9IHVidXNfc3Vic2NyaWJlKCBjdHgsICZzdWItPnMsIGlkKSApICl7CiAJ
CWx1YV9wdXNoZnN0cmluZyggTCwgIkZhaWxlZCB0byByZWdpc3RlciBzdWJzY3JpYmVyLCBzdGF0
dXM9JWQiLCBzdGF0dXMgKTsKLQkJbHVhX2Vycm9yKCBMICk7CisJCXJldHVybiBsdWFfZXJyb3Io
IEwgKTsKIAl9CisKKwlyZXR1cm4gMDsKIH0KIAogc3RhdGljIGludAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxp
c3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQu
b3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
