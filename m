Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C708C1897FD
	for <lists+openwrt-devel@lfdr.de>; Wed, 18 Mar 2020 10:36:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=F9737rLaBD91tY4fRJY7bL/LjBIdX6dpouM7aBI0lMs=; b=am5DwNXC2saLps
	i/5WJoE2IglhXP7G1zBdP9D6OYXwtqRJuz+yDLSbieaVamXj5SJZdXT40SALOLM1AxQRc6lqZNl6w
	4ZOHF8itQr7cxtyzp4SAWWvcpC03WvgQ5yVFN+xde68+JUz+ME8o8aRoo0MDKNc59zRxuZLCxi7ov
	Iv5O02LRGavVCtsMBdZ93eHcucXLJBQHImb2ZTxdHUzq1LbrnGIAPJ8UHzGD3kxlTBlxLxBB72/6v
	N+yzgE4d/MQp8b0RdBb98Kd6iFULrZfJZH69rdm2Ytdqc/GiAxOzOIIOPgsPqWnw7owtcU+ovL5JI
	+keLGrSb1pEOligpAi5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEV78-0007qe-7b; Wed, 18 Mar 2020 09:35:50 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEV6z-0007pj-Gv
 for openwrt-devel@lists.openwrt.org; Wed, 18 Mar 2020 09:35:43 +0000
Received: from supercopter (82-64-212-153.subs.proxad.net [82.64.212.153])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPS id D43EE600B1;
 Wed, 18 Mar 2020 10:35:34 +0100 (CET)
DMARC-Filter: OpenDMARC Filter v1.3.2 vps.slashdirt.org D43EE600B1
Authentication-Results: vps.slashdirt.org; dmarc=fail (p=quarantine dis=none)
 header.from=slashdirt.org
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org D43EE600B1
Received: by supercopter (sSMTP sendmail emulation);
 Wed, 18 Mar 2020 10:35:34 +0100
From: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 18 Mar 2020 10:35:26 +0100
Message-Id: <20200318093526.45096-1-hacks@slashdirt.org>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,DKIM_ADSP_ALL,
 NO_DNS_FOR_FROM,TXREP,UNPARSEABLE_RELAY shortcircuit=no autolearn=no
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on vps.slashdirt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_023541_727881_9C69E559 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.4 NO_DNS_FOR_FROM        RBL: Envelope sender has no MX or A DNS records
 [listed in slashdirt.org.	IN	A]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.1 DKIM_ADSP_ALL          No valid author signature, domain signs all mail
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] ath79: improve mikrotik-caldata.sh
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
Cc: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

UmVkdWNlIHVubmVjZXNzYXJ5IGZsYXNoIHdlYXIgYW5kIGJlIHRpZHk6Ci0gUnVuIHRoZSBleHRy
YWN0aW9uIG9ubHkgaWYgbmVjZXNzYXJ5Ci0gRXh0cmFjdCB0ZW1wb3JhcnkgZmlsZSB0byAvdG1w
Ci0gY2xlYW51cCBhZnRlciBleGVjdXRpb24KClRlc3RlZC1ieTogUm9nZXIgUHVleW8gQ2VudGVs
bGVzIDxyb2dlci5wdWV5b0BndWlmaS5uZXQ+ClNpZ25lZC1vZmYtYnk6IFRoaWJhdXQgVkFSw4hO
RSA8aGFja3NAc2xhc2hkaXJ0Lm9yZz4KLS0tCiAuLi4vYXRoNzkvbWlrcm90aWsvYmFzZS1maWxl
cy9saWIvZnVuY3Rpb25zL21pa3JvdGlrLWNhbGRhdGEuc2ggIHwgOSArKysrKysrLS0KIDEgZmls
ZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
dGFyZ2V0L2xpbnV4L2F0aDc5L21pa3JvdGlrL2Jhc2UtZmlsZXMvbGliL2Z1bmN0aW9ucy9taWty
b3Rpay1jYWxkYXRhLnNoIGIvdGFyZ2V0L2xpbnV4L2F0aDc5L21pa3JvdGlrL2Jhc2UtZmlsZXMv
bGliL2Z1bmN0aW9ucy9taWtyb3Rpay1jYWxkYXRhLnNoCmluZGV4IDljNDAxNmVlNWQuLjcxYTFi
ZjAyZjMgMTAwNjQ0Ci0tLSBhL3RhcmdldC9saW51eC9hdGg3OS9taWtyb3Rpay9iYXNlLWZpbGVz
L2xpYi9mdW5jdGlvbnMvbWlrcm90aWstY2FsZGF0YS5zaAorKysgYi90YXJnZXQvbGludXgvYXRo
NzkvbWlrcm90aWsvYmFzZS1maWxlcy9saWIvZnVuY3Rpb25zL21pa3JvdGlrLWNhbGRhdGEuc2gK
QEAgLTksMTMgKzksMTggQEAgbWlrcm90aWtfY2FsZGF0YV9leHRyYWN0KCkgewogCWxvY2FsIG9m
ZnNldD0kKCgkMikpCiAJbG9jYWwgY291bnQ9JCgoJDMpKQogCWxvY2FsIG10ZAotCWxvY2FsIGVy
ZGZpbGU9Ii9saWIvZmlybXdhcmUvZXJkLmJpbiIKKwlsb2NhbCBlcmRmaWxlPSIvdG1wL2VyZC5i
aW4iCisJbG9jYWwgZndmaWxlPSIvbGliL2Zpcm13YXJlLyR7RklSTVdBUkV9IgorCisJWyAtZSAk
ZndmaWxlIF0gJiYgZXhpdCAwCiAKIAltdGQ9JChmaW5kX210ZF9jaGFyZGV2ICRwYXJ0KQogCVsg
LW4gIiRtdGQiIF0gfHwgY2FsZGF0YV9kaWUgIm5vIG10ZCBkZXZpY2UgZm91bmQgZm9yIHBhcnRp
dGlvbiAkcGFydCIKIAogCXJiZXh0cmFjdCAtZSAkbXRkICRlcmRmaWxlCiAKLQlkZCBpZj0kZXJk
ZmlsZSBvZj0vbGliL2Zpcm13YXJlLyRGSVJNV0FSRSBpZmxhZz1za2lwX2J5dGVzIGJzPSRjb3Vu
dCBza2lwPSRvZmZzZXQgY291bnQ9MSAyPi9kZXYvbnVsbCB8fCBcCisJZGQgaWY9JGVyZGZpbGUg
b2Y9JGZ3ZmlsZSBpZmxhZz1za2lwX2J5dGVzIGJzPSRjb3VudCBza2lwPSRvZmZzZXQgY291bnQ9
MSAyPi9kZXYvbnVsbCB8fCBcCiAJCWNhbGRhdGFfZGllICJmYWlsZWQgdG8gZXh0cmFjdCBjYWxp
YnJhdGlvbiBkYXRhIGZyb20gJG10ZCIKKworCXJtIC1mICRlcmRmaWxlCiB9Ci0tIAoyLjExLjAK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0
LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBz
Oi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
