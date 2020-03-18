Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CB7318A82B
	for <lists+openwrt-devel@lfdr.de>; Wed, 18 Mar 2020 23:29:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4w8bQjjZA0xAUX+VxeTpqFdJdrXpr6jR5ZsIYqm3qxE=; b=taQ6uvjsGW4hM9
	dOswea8vfSKifz2omHT+ktrD1FDU4HW2KUYjUG3xQUWzWjThJmZetT7zE5UyLbM+87fh4wuRr3+rp
	a2TQ7ozZa48yxt79D/VKjgm7D+rggdzrxMif53KxkBpmbYPD4e8YnWZQ78AKdwBaMJHQS+A+o9Fh/
	n5vnNb7Z6gNtjufJZqK6dLARG4Jxz+9Q5Yvjt1aroHl0SKY+vsWLK9KNo+/fufZOfCzCWjdauBvhe
	0NA1PE+NnaRmYYDV9PojoIY5kHJKWgjudVxyziWw0cASW+LEq0YOMXiU3+z7ZSf5t9Ma+Zu9ADGGq
	0R9S94XwoTDofLQmAWOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEhBw-0000p3-UX; Wed, 18 Mar 2020 22:29:36 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEhA8-0006wi-Sm
 for openwrt-devel@lists.openwrt.org; Wed, 18 Mar 2020 22:27:46 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id A59DF4C23;
 Wed, 18 Mar 2020 23:27:40 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id f98e8105;
 Wed, 18 Mar 2020 23:27:27 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 18 Mar 2020 23:27:13 +0100
Message-Id: <20200318222713.1495-10-ynezz@true.cz>
In-Reply-To: <20200318222713.1495-1-ynezz@true.cz>
References: <20200318222713.1495-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_152745_100030_2E41F4AD 
X-CRM114-Status: UNSURE (   5.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 9/9] linux-firmware: add firmware for
 RTL8723BS SDIO modules
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

QWRkcyBmaXJtd2FyZSBwYWNrYWdlIGZvciBSZWFsdGVrIFJUTDg3MjNCUyBTRElPIFdpcmVsZXNz
IExBTiBOSUMgZHJpdmVyCmF2YWlsYWJsZSBpbiB0aGUgc3RhZ2luZy4KClNpZ25lZC1vZmYtYnk6
IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Ci0tLQogcGFja2FnZS9maXJtd2FyZS9saW51
eC1maXJtd2FyZS9yZWFsdGVrLm1rIHwgNyArKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNl
cnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvcGFja2FnZS9maXJtd2FyZS9saW51eC1maXJtd2FyZS9y
ZWFsdGVrLm1rIGIvcGFja2FnZS9maXJtd2FyZS9saW51eC1maXJtd2FyZS9yZWFsdGVrLm1rCmlu
ZGV4IDg3YTExYzA3NzlhZi4uYjBmNmZmN2YzNTFkIDEwMDY0NAotLS0gYS9wYWNrYWdlL2Zpcm13
YXJlL2xpbnV4LWZpcm13YXJlL3JlYWx0ZWsubWsKKysrIGIvcGFja2FnZS9maXJtd2FyZS9saW51
eC1maXJtd2FyZS9yZWFsdGVrLm1rCkBAIC03OSw2ICs3OSwxMyBAQCBkZWZpbmUgUGFja2FnZS9y
dGw4NzIzYnUtZmlybXdhcmUvaW5zdGFsbAogZW5kZWYKICQoZXZhbCAkKGNhbGwgQnVpbGRQYWNr
YWdlLHJ0bDg3MjNidS1maXJtd2FyZSkpCiAKK1BhY2thZ2UvcnRsODcyM2JzLWZpcm13YXJlID0g
JChjYWxsIFBhY2thZ2UvZmlybXdhcmUtZGVmYXVsdCxSZWFsVGVrIFJUTDg3MjNCUyBmaXJtd2Fy
ZSkKK2RlZmluZSBQYWNrYWdlL3J0bDg3MjNicy1maXJtd2FyZS9pbnN0YWxsCisJJChJTlNUQUxM
X0RJUikgJCgxKS9saWIvZmlybXdhcmUvcnRsd2lmaQorCSQoSU5TVEFMTF9EQVRBKSAkKFBLR19C
VUlMRF9ESVIpL3J0bHdpZmkvcnRsODcyM2JzKi5iaW4gJCgxKS9saWIvZmlybXdhcmUvcnRsd2lm
aQorZW5kZWYKKyQoZXZhbCAkKGNhbGwgQnVpbGRQYWNrYWdlLHJ0bDg3MjNicy1maXJtd2FyZSkp
CisKIFBhY2thZ2UvcnRsODgyMWFlLWZpcm13YXJlID0gJChjYWxsIFBhY2thZ2UvZmlybXdhcmUt
ZGVmYXVsdCxSZWFsVGVrIFJUTDg4MjFBRSBmaXJtd2FyZSkKIGRlZmluZSBQYWNrYWdlL3J0bDg4
MjFhZS1maXJtd2FyZS9pbnN0YWxsCiAJJChJTlNUQUxMX0RJUikgJCgxKS9saWIvZmlybXdhcmUv
cnRsd2lmaQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
b3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9y
ZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZl
bAo=
