Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D801BC2F3
	for <lists+openwrt-devel@lfdr.de>; Tue, 28 Apr 2020 17:20:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=inIY+j4nvGZVUJnGdw3ZcGcEi12/QC4hQc0ElWJDH1Y=; b=nsrpF0QC3XMbuQ
	uuxSlBrjIpyyzmfTnT9+dtCET2P/KQTfElGAzg8kP4jm+uOjnyJiz99VhSQeceoBALkiE5M6CfP2R
	38yP+EVyIZENGsxurL2TdqODzyAV18kcYk20Hs3ulXJkSMzJcspOR4kLn65Tz20dsfONeWz6PumPQ
	mCItFPua4lkQSOsQAiyUwYSGzb8cRbN690Q1T95wPsphg8+prSyVrly87hN4mVIBZnQ7jjyd4Ewtm
	lebNXlGiRtx+UDttqprgQ8lpVrtF/adc0RYUmNkXqJIC8+CUUmhzHneg7Uk7mP/QSiyXWBi9pFQUM
	tVrB10IB4b3G2B9Uj04A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTS22-0003a4-5L; Tue, 28 Apr 2020 15:20:22 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTS1q-0001pz-6z
 for openwrt-devel@lists.openwrt.org; Tue, 28 Apr 2020 15:20:13 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 4CCFE35DD;
 Tue, 28 Apr 2020 17:20:03 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 8cd62097;
 Tue, 28 Apr 2020 17:19:49 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 28 Apr 2020 17:19:58 +0200
Message-Id: <20200428151958.17614-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_082010_414689_BC97C38F 
X-CRM114-Status: UNSURE (   6.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] dnsmasq: always inform about disabled dhcp
 service
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

SW5pdCBzY3JpcHQgY2hlY2tzIGZvciBhbiBhbHJlYWR5IGFjdGl2ZSBESENQIHNlcnZlciBvbiB0
aGUgaW50ZXJmYWNlCmFuZCBpZiBzdWNoIERIQ1Agc2VydmVyIGlzIGZvdW5kLCB0aGVuIGl0IGxv
Z3MgInJlZnVzaW5nIHRvIHN0YXJ0IERIQ1AiCm1lc3NhZ2UsIHN0YXJ0cyBkbnNtYXNxIHdpdGhv
dXQgREhDUCBzZXJ2aWNlIHVubGVzcyBgb3B0aW9uIGZvcmNlIDFgIGlzCnNldCBhbmQgY2FjaGVz
IHRoZSBESENQIHNlcnZlciBjaGVjayByZXN1bHQuCgpFYWNoIGNvbnNlY3V0aXZlIHNlcnZpY2Ug
c3RhcnQgdGhlbiB1c2VzIHRoaXMgY2FjaGVkIERIQ1Agc2VydmVyIGNoZWNrCnJlc3VsdCwgYnV0
IGRvZXNuJ3QgcHJvdmlkZSBsb2cgZmVlZGJhY2sgYWJvdXQgZGlzYWJsZWQgREhDUCBzZXJ2aWNl
CmFueW1vcmUuCgpTbyB0aGlzIHBhdGNoIGVuc3VyZXMsIHRoYXQgdGhlIGxvZyBtZXNzYWdlIGFi
b3V0IGRpc2FibGVkIERIQ1Agc2VydmljZQpvbiBwYXJ0aWN1bGFyIGludGVyZmFjZSBpcyBhbHdh
eXMgcHJvdmlkZWQuCgpTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6
PgotLS0KIHBhY2thZ2UvbmV0d29yay9zZXJ2aWNlcy9kbnNtYXNxL2ZpbGVzL2Ruc21hc3EuaW5p
dCB8IDEyICsrKysrKy0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNiBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9wYWNrYWdlL25ldHdvcmsvc2VydmljZXMvZG5zbWFz
cS9maWxlcy9kbnNtYXNxLmluaXQgYi9wYWNrYWdlL25ldHdvcmsvc2VydmljZXMvZG5zbWFzcS9m
aWxlcy9kbnNtYXNxLmluaXQKaW5kZXggMTA1MTA4N2UwNWE2Li45Mjg4OTcxNDI2YWUgMTAwNjQ0
Ci0tLSBhL3BhY2thZ2UvbmV0d29yay9zZXJ2aWNlcy9kbnNtYXNxL2ZpbGVzL2Ruc21hc3EuaW5p
dAorKysgYi9wYWNrYWdlL25ldHdvcmsvc2VydmljZXMvZG5zbWFzcS9maWxlcy9kbnNtYXNxLmlu
aXQKQEAgLTExMCwxMSArMTEwLDYgQEAgZGhjcF9jaGVjaygpIHsKIAogCXVkaGNwYyAtbiAtcSAt
cyAvYmluL3RydWUgLXQgMSAtaSAiJGlmbmFtZSIgPiYtICYmIHJ2PTEgfHwgcnY9MAogCi0JWyAk
cnYgLWVxIDEgXSAmJiBcCi0JCWxvZ2dlciAtdCBkbnNtYXNxIFwKLQkJCSJmb3VuZCBhbHJlYWR5
IHJ1bm5pbmcgREhDUC1zZXJ2ZXIgb24gaW50ZXJmYWNlICckaWZuYW1lJyIgXAotCQkJInJlZnVz
aW5nIHRvIHN0YXJ0LCB1c2UgJ29wdGlvbiBmb3JjZSAxJyB0byBvdmVycmlkZSIKLQogCWVjaG8g
JHJ2ID4gIiRzdGFtcCIKIAlyZXR1cm4gJHJ2CiB9CkBAIC01MTcsNyArNTEyLDEyIEBAIGRoY3Bf
YWRkKCkgewogCiAJI2NoZWNrIGZvciBhbiBhbHJlYWR5IGFjdGl2ZSBkaGNwIHNlcnZlciBvbiB0
aGUgaW50ZXJmYWNlLCB1bmxlc3MgJ2ZvcmNlJyBpcyBzZXQKIAljb25maWdfZ2V0X2Jvb2wgZm9y
Y2UgIiRjZmciIGZvcmNlIDAKLQlbICRmb3JjZSAtZ3QgMCBdIHx8IGRoY3BfY2hlY2sgIiRpZm5h
bWUiIHx8IHJldHVybiAwCisJWyAkZm9yY2UgLWd0IDAgXSB8fCBkaGNwX2NoZWNrICIkaWZuYW1l
IiB8fCB7CisJCWxvZ2dlciAtdCBkbnNtYXNxIFwKKwkJCSJmb3VuZCBhbHJlYWR5IHJ1bm5pbmcg
REhDUC1zZXJ2ZXIgb24gaW50ZXJmYWNlICckaWZuYW1lJyIgXAorCQkJInJlZnVzaW5nIHRvIHN0
YXJ0LCB1c2UgJ29wdGlvbiBmb3JjZSAxJyB0byBvdmVycmlkZSIKKwkJcmV0dXJuIDAKKwl9CiAK
IAljb25maWdfZ2V0IHN0YXJ0ICIkY2ZnIiBzdGFydCAxMDAKIAljb25maWdfZ2V0IGxpbWl0ICIk
Y2ZnIiBsaW1pdCAxNTAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3Bl
bndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53
cnQtZGV2ZWwK
