Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAEE112706E
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Dec 2019 23:12:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8VcTPE+SoHe/QbZWIhHBVH3fcLiDpMFj+7lhUbbXZuo=; b=PPwAtXw+oj/PUm
	FJTRwAKVZisTSSJ0SXcpdElt70orWoIM577SqDkx88Np6NUuU5wFrLjpuaU1fBIDM9G/ryxNXACSP
	I0iWFXsZYLdsgzEaAR7Z1BLHlN5Bjh4UwLs84RtmR3qe/btx0O9k3ov0oErSWfphuKFYH5wI4mhAp
	zz3eI2s7bDW+e5+SV3VQxyfDAHrIeMrrw3MvOGSlSKeGOnlp/dSQvB9Dfvkk2Rycy5bUD7wg/ZiGg
	1N5hPT+I07wfIPn12Kzt38xsGLHYZSVtRFI1okzaZVJ7T+YjjtaO+n+8X5iX1NY9px6yN5oOA3so0
	TWtehYlcNJnuvaHbBxeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii42G-0006Dl-Nk; Thu, 19 Dec 2019 22:12:44 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii41H-00052f-PL
 for openwrt-devel@lists.openwrt.org; Thu, 19 Dec 2019 22:11:45 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 7DE9E4BBB;
 Thu, 19 Dec 2019 23:11:42 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 45d6b5f7;
 Thu, 19 Dec 2019 23:11:32 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 19 Dec 2019 23:11:12 +0100
Message-Id: <20191219221125.22646-4-ynezz@true.cz>
In-Reply-To: <20191219221125.22646-1-ynezz@true.cz>
References: <20191219221125.22646-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_141143_967678_8FB303F8 
X-CRM114-Status: UNSURE (   8.64  )
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
Subject: [OpenWrt-Devel] [PATCH ubus 03/16] ubusd/libubus-io: fix variable
 sized struct position warning
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

Rml4ZXMgZm9sbG93aW5nIGNsYW5nLTkgY29tcGlsZXIgd2FybmluZ3M6CgogdWJ1c2QuYzo5OTox
ODogZXJyb3I6IGZpZWxkICdoJyB3aXRoIHZhcmlhYmxlIHNpemVkIHR5cGUgJ3N0cnVjdCBjbXNn
aGRyJyBub3QgYXQgdGhlIGVuZCBvZiBhIHN0cnVjdCBvciBjbGFzcyBpcyBhIEdOVSBleHRlbnNp
b24gWy1XZXJyb3IsLVdnbnUtdmFyaWFibGUtc2l6ZWQtdHlwZS1ub3QtYXQtZW5kXQogICAgICAg
ICAgICAgICAgc3RydWN0IGNtc2doZHIgaDsKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IF4KClNpZ25lZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Ci0tLQogbGli
dWJ1cy1pby5jIHwgNCArKy0tCiB1YnVzZC5jICAgICAgfCA0ICsrLS0KIDIgZmlsZXMgY2hhbmdl
ZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2xpYnVidXMt
aW8uYyBiL2xpYnVidXMtaW8uYwppbmRleCAyMjhhZjVjYTI3OWMuLmNkZDFlNmUxZWQ2YSAxMDA2
NDQKLS0tIGEvbGlidWJ1cy1pby5jCisrKyBiL2xpYnVidXMtaW8uYwpAQCAtNjAsOCArNjAsOCBA
QCBzdGF0aWMgdm9pZCB3YWl0X2RhdGEoaW50IGZkLCBib29sIHdyaXRlKQogc3RhdGljIGludCB3
cml0ZXZfcmV0cnkoaW50IGZkLCBzdHJ1Y3QgaW92ZWMgKmlvdiwgaW50IGlvdl9sZW4sIGludCBz
b2NrX2ZkKQogewogCXN0YXRpYyBzdHJ1Y3QgewotCQlzdHJ1Y3QgY21zZ2hkciBoOwogCQlpbnQg
ZmQ7CisJCXN0cnVjdCBjbXNnaGRyIGg7CiAJfSBmZF9idWYgPSB7CiAJCS5oID0gewogCQkJLmNt
c2dfbGVuID0gc2l6ZW9mKGZkX2J1ZiksCkBAIC0xNTksOCArMTU5LDggQEAgc3RhdGljIGludCBy
ZWN2X3JldHJ5KHN0cnVjdCB1YnVzX2NvbnRleHQgKmN0eCwgc3RydWN0IGlvdmVjICppb3YsIGJv
b2wgd2FpdCwgaW4KIAlpbnQgYnl0ZXMsIHRvdGFsID0gMDsKIAlpbnQgZmQgPSBjdHgtPnNvY2su
ZmQ7CiAJc3RhdGljIHN0cnVjdCB7Ci0JCXN0cnVjdCBjbXNnaGRyIGg7CiAJCWludCBmZDsKKwkJ
c3RydWN0IGNtc2doZHIgaDsKIAl9IGZkX2J1ZiA9IHsKIAkJLmggPSB7CiAJCQkuY21zZ190eXBl
ID0gU0NNX1JJR0hUUywKZGlmZiAtLWdpdCBhL3VidXNkLmMgYi91YnVzZC5jCmluZGV4IDc3Mzhm
NTBmOTc3OS4uZDZhNzJlNzMzNzBiIDEwMDY0NAotLS0gYS91YnVzZC5jCisrKyBiL3VidXNkLmMK
QEAgLTk2LDggKzk2LDggQEAgc3RhdGljIGludCB1YnVzX21zZ193cml0ZXYoaW50IGZkLCBzdHJ1
Y3QgdWJ1c19tc2dfYnVmICp1YiwgaW50IG9mZnNldCkKIHsKIAlzdGF0aWMgc3RydWN0IGlvdmVj
IGlvdlsyXTsKIAlzdGF0aWMgc3RydWN0IHsKLQkJc3RydWN0IGNtc2doZHIgaDsKIAkJaW50IGZk
OworCQlzdHJ1Y3QgY21zZ2hkciBoOwogCX0gZmRfYnVmID0gewogCQkuaCA9IHsKIAkJCS5jbXNn
X2xlbiA9IHNpemVvZihmZF9idWYpLApAQCAtMjE2LDggKzIxNiw4IEBAIHN0YXRpYyB2b2lkIGNs
aWVudF9jYihzdHJ1Y3QgdWxvb3BfZmQgKnNvY2ssIHVuc2lnbmVkIGludCBldmVudHMpCiAJc3Ry
dWN0IHVidXNfbXNnX2J1ZiAqdWI7CiAJc3RhdGljIHN0cnVjdCBpb3ZlYyBpb3Y7CiAJc3RhdGlj
IHN0cnVjdCB7Ci0JCXN0cnVjdCBjbXNnaGRyIGg7CiAJCWludCBmZDsKKwkJc3RydWN0IGNtc2do
ZHIgaDsKIAl9IGZkX2J1ZiA9IHsKIAkJLmggPSB7CiAJCQkuY21zZ190eXBlID0gU0NNX1JJR0hU
UywKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53
cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0
cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
