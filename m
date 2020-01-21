Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DF6B14385F
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Jan 2020 09:36:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h1+Fb1gNjzy4ABOCUqScxrnR0IzapbjhCwAMB76EJ+I=; b=MG2XpFEbHUqqCt
	8ZSvVwnzCDnvgaHXp/TRsL9A2JIpDLMQ7OlObcmAiKUkt5dNJvfOdkyxO4HOg42+HXsgn7WWNjxuG
	Uq5/RqjDbxk1LDLADns6mWybW+6Zz1lWrCZEdZdAnGiH1VBEGUohrSdmEYeAC6CAjglbN8vs4sONf
	AcNixdkWe+EOcPIV4ESVVtFvkVvvrapW9GuChUZfO+Wn2IcN4EFop5qi8CIU7VIZhfZI6fUZKiQUY
	M89mZig71+JEALPPL6sJ3odjcwM6afmihKFCWldXa7low+vw3fsOmejgnvrFeCyRwFSft2vuAY+LY
	GG89GqHYh8aH5GMH5WVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itp1D-0006iB-VG; Tue, 21 Jan 2020 08:36:15 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itp0y-0006hH-Ha
 for openwrt-devel@lists.openwrt.org; Tue, 21 Jan 2020 08:36:06 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 7D1C04CB0;
 Tue, 21 Jan 2020 09:35:58 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 713bc491;
 Tue, 21 Jan 2020 09:35:48 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 21 Jan 2020 09:35:08 +0100
Message-Id: <20200121083509.24067-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_003600_733623_BD0392C9 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH procd 1/2] instance: provide error feedback
 if ujail binary is missing
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

T3RoZXJ3aXNlIGl0J3MgcXVpdGUgaGFyZCB0byB0cmFjayBzdWNoIGlzc3Vlcy4gIFdoaWxlIGF0
IGl0LCBiZSBEUlkgYW5kCnVzZSBVSkFJTF9CSU5fUEFUSCBjb25zdGFudCBmb3IgdWphaWwgYmlu
YXJ5LgoKU2lnbmVkLW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KLS0tCiBz
ZXJ2aWNlL2luc3RhbmNlLmMgfCA5ICsrKysrKystLQogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0
aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zZXJ2aWNlL2luc3RhbmNlLmMg
Yi9zZXJ2aWNlL2luc3RhbmNlLmMKaW5kZXggMTRkYTg2MjQ3YzcwLi5lNTYxNWQ1YzJmMDIgMTAw
NjQ0Ci0tLSBhL3NlcnZpY2UvaW5zdGFuY2UuYworKysgYi9zZXJ2aWNlL2luc3RhbmNlLmMKQEAg
LTM2LDYgKzM2LDcgQEAKICNpbmNsdWRlICJzZXJ2aWNlLmgiCiAjaW5jbHVkZSAiaW5zdGFuY2Uu
aCIKIAorI2RlZmluZSBVSkFJTF9CSU5fUEFUSCAiL3NiaW4vdWphaWwiCiAKIGVudW0gewogCUlO
U1RBTkNFX0FUVFJfQ09NTUFORCwKQEAgLTIwNSw3ICsyMDYsNyBAQCBqYWlsX3J1bihzdHJ1Y3Qg
c2VydmljZV9pbnN0YW5jZSAqaW4sIGNoYXIgKiphcmd2KQogCXN0cnVjdCBqYWlsICpqYWlsID0g
JmluLT5qYWlsOwogCWludCBhcmdjID0gMDsKIAotCWFyZ3ZbYXJnYysrXSA9ICIvc2Jpbi91amFp
bCI7CisJYXJndlthcmdjKytdID0gVUpBSUxfQklOX1BBVEg7CiAKIAlpZiAoamFpbC0+bmFtZSkg
ewogCQlhcmd2W2FyZ2MrK10gPSAiLW4iOwpAQCAtNzk1LDkgKzc5NiwxMyBAQCBpbnN0YW5jZV9q
YWlsX3BhcnNlKHN0cnVjdCBzZXJ2aWNlX2luc3RhbmNlICppbiwgc3RydWN0IGJsb2JfYXR0ciAq
YXR0cikKIAlzdHJ1Y3QgYmxvYl9hdHRyICp0YltfX0pBSUxfQVRUUl9NQVhdOwogCXN0cnVjdCBq
YWlsICpqYWlsID0gJmluLT5qYWlsOwogCXN0cnVjdCBzdGF0IHM7CisJaW50IHI7CiAKLQlpZiAo
c3RhdCgiL3NiaW4vdWphaWwiLCAmcykpCisJciA9IHN0YXQoVUpBSUxfQklOX1BBVEgsICZzKTsK
KwlpZiAociA8IDApIHsKKwkJRVJST1IoInVuYWJsZSB0byBmaW5kICVzOiAlbSAoJWQpXG4iLCBV
SkFJTF9CSU5fUEFUSCwgcik7CiAJCXJldHVybiAwOworCX0KIAogCWJsb2Jtc2dfcGFyc2UoamFp
bF9hdHRyLCBfX0pBSUxfQVRUUl9NQVgsIHRiLAogCQlibG9ibXNnX2RhdGEoYXR0ciksIGJsb2Jt
c2dfZGF0YV9sZW4oYXR0cikpOwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0
cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8v
b3BlbndydC1kZXZlbAo=
