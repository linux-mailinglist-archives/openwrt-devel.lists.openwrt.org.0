Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3245D127076
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Dec 2019 23:13:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GBg4oNgwzDpQWggqlBmW4HURAYIhoeHDRwlPBsHClRs=; b=ipMmLrgMyFnRKH
	LaqS9jGUB8ipexQ4J3pej4KiHGS8K1gOd+91H6xBp499OQt2xUFXzT+YzyUaYFy7/6xg4gSl0UJM1
	Cic/6UnI2p9hd8jo9Bxk/+EoyJ+V1TKOGps2U2p1rgQFTeb5rKolbZNfOxvtZaRaRQf51UYnAFAtn
	svFqeWI2HuohZOb68EeLbMRaXCGk5rZdfCLKjRySbIIX2EfY8LRTGDy0b08CfHChNXJy2W6I1yzHk
	aeg0Xci/YqG5wGiPTHQJ6Z7rgC/4ArstDneXcO0s1ECgiZmmnqoWngXkuqxGP52lOQr+RUrjeJOJr
	K8Vq3rLsnqQ/NPlDg0Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii43L-00088d-35; Thu, 19 Dec 2019 22:13:51 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii41L-00054t-CH
 for openwrt-devel@lists.openwrt.org; Thu, 19 Dec 2019 22:11:49 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id E03904BCD;
 Thu, 19 Dec 2019 23:11:45 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 6f4e2f23;
 Thu, 19 Dec 2019 23:11:36 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 19 Dec 2019 23:11:20 +0100
Message-Id: <20191219221125.22646-12-ynezz@true.cz>
In-Reply-To: <20191219221125.22646-1-ynezz@true.cz>
References: <20191219221125.22646-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_141147_570433_164DB2DF 
X-CRM114-Status: UNSURE (   6.78  )
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
Subject: [OpenWrt-Devel] [PATCH ubus 11/16] lua: ubus_lua_do_subscribe: fix
 copy&paste error
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

Rml4IGNvcHkmcGFzdGUgZXJyb3IgaW4gTHVhIHVidXMgc3Vic2NyaWJlciByZW1vdmFsIGNhbGxi
YWNrLgoKQWRkcmVzc2VzLUNvdmVyaXR5LUlEOiAxNDEyMzExICgiQ29weS1wYXN0ZSBlcnJvciIp
ClNpZ25lZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Ci0tLQogbHVhL3Vi
dXMuYyB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9sdWEvdWJ1cy5jIGIvbHVhL3VidXMuYwppbmRleCBmYjUwNDE4
ZDI3YjAuLjg2ZGNjNTAwN2IzYSAxMDA2NDQKLS0tIGEvbHVhL3VidXMuYworKysgYi9sdWEvdWJ1
cy5jCkBAIC04NDAsOCArODQwLDggQEAgdWJ1c19sdWFfZG9fc3Vic2NyaWJlKCBzdHJ1Y3QgdWJ1
c19jb250ZXh0ICpjdHgsIGx1YV9TdGF0ZSAqTCwgY29uc3QgY2hhciogdGFyZ2UKIAogCWlmKCBp
ZHhyZW1vdmUgKXsKIAkJbHVhX2dldGdsb2JhbChMLCAiX191YnVzX2NiX3N1YnNjcmliZSIpOwot
CQlsdWFfcHVzaHZhbHVlKEwsIGlkeG5vdGlmeSk7Ci0JCXN1Yi0+cm5vdGlmeSA9IGx1YUxfcmVm
KEwsIC0yKTsKKwkJbHVhX3B1c2h2YWx1ZShMLCBpZHhyZW1vdmUpOworCQlzdWItPnJyZW1vdmUg
PSBsdWFMX3JlZihMLCAtMik7CiAJCWx1YV9wb3AoTCwgMSk7CiAJCXN1Yi0+cy5yZW1vdmVfY2Ig
PSB1YnVzX3N1Yl9yZW1vdmVfaGFuZGxlcjsKIAl9CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0
LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1h
bi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
