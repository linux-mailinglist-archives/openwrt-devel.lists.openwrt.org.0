Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AA67E0C4A
	for <lists+openwrt-devel@lfdr.de>; Tue, 22 Oct 2019 21:12:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OKLqqMekjXGheq3MpVLkqFWQKPSea6bklvp9lqNe1w0=; b=NFvJAPDYj8QhC8
	qG1zf+f8GihMxDBEXLXj8Yt+E9/d1n2lGnL0km8+gEved7ekKBEXOFt+wgUpR6EP/2k4sHBW5akg/
	XAt8AVe4aUz5Q7y4P/J9wjN1h4fyYOom5F5tGIMk81kP80TTXJJfuddwevhhL4M/MHPN0VM34nQlb
	TK4nM4rYKn5v4O5vO6GLkbgyDF+c7TrFH1lp9ArXJXEWhdfxbhs/FuVM6Sl7GxhNAEu8bYIxIkKvU
	79oQ1277KT6xVfpfgZCJjUAaTIdDUzdpzJe3qlaklTITyT3hRvHoHUZ4nAI9Qt+nlr5CJOhkWIJQW
	kOZjWeotLqFat0EJJigw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMzaM-0003uZ-MJ; Tue, 22 Oct 2019 19:12:50 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMzaF-0003tl-Am
 for openwrt-devel@lists.openwrt.org; Tue, 22 Oct 2019 19:12:44 +0000
Received: from JKLETSKY-MBP15.guidewire.com (unknown [199.91.43.11])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 67BCB58F74;
 Tue, 22 Oct 2019 12:12:11 -0700 (PDT)
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
From: Jeff Kletsky <lede@allycomm.com>
Message-ID: <4de599ae-818a-0135-8f06-95925588b821@allycomm.com>
Date: Tue, 22 Oct 2019 12:12:11 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_121243_373627_EE82F41D 
X-CRM114-Status: UNSURE (   7.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] build: "bash: GZ_SUFFIX: command not found" --
 Likely From Device/Build/image
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

QXMgZGlzY292ZXJlZCBieSAid3VsZnkyMyJbMV0sIGEgdmVyYm9zZSBidWlsZCAoVj1zKSBvZmYg
YG1hc3RlcmAgaW5kaWNhdGVzCgogwqDCoMKgIEdaX1NVRkZJWCA6PQogwqDCoMKgIGJhc2g6IEda
X1NVRkZJWDogY29tbWFuZCBub3QgZm91bmQKClRoaXMgYXBwZWFycyB0byBiZSAiY29zbWV0aWMi
LCBhcyB0aGUgaW1hZ2VzIGFyZSBjcmVhdGVkLCBjYW4gYmUgCmZsYXNoZWQsIGFuZCBydW4gYXMg
ZXhwZWN0ZWQuCgpPYnNlcnZlZCB3aXRoOgoKKiBhdGg3OSwgR0wtQVIzMDBNIChOQU5EKSAoMXgp
CgoqIGF0aDc5LCBBcmNoZXIgQzd2MiAoM3gpCgoqIGlwcTQweHgsIExpbmtzeXMgRUE4MzAwICgx
eCkKCnNvIGFwcGVhcnMgbm90IHRvIGJlIHNwZWNpZmljIHRvIGEgdGFyZ2V0IG9yIHN1Yi10YXJn
ZXQuCgoKU291cmNlIG9mIGVycm9yL3dhcm5pbmcgYXBwZWFycyB0byBiZSBgaW5jbHVkZS9pbWFn
ZS5ta2AKCmRlZmluZSBEZXZpY2UvQnVpbGQvaW1hZ2UKIMKgIEdaX1NVRkZJWCA6PSAkKGlmICQo
ZmlsdGVyICVkdGIgJWd6LCQoMikpLCwkKGlmICQoYW5kICQoZmluZHN0cmluZyAKZXh0NCwkKDEp
KSwkKENPTkZJR19UQVJHRVRfSU1BR0VTX0daSVApKSwuZ3opKQogwqAgJCQoX1RBUkdFVCk6ICQo
QklOX0RJUikvJChjYWxsIElNQUdFX05BTUUsJCgxKSwkKDIpKSQkKEdaX1NVRkZJWCkKCgpNeSAi
bWFrZSIgc2tpbGxzIGFyZSwgdW5mb3J0dW5hdGVseSwgbm90IHN1ZmZpY2llbnQgdG8gZGlhZ25v
c2UgZnVydGhlci4KCkplZmYKCgoKWzFdIGh0dHBzOi8vZ2l0aHViLmNvbS9vcGVud3J0L29wZW53
cnQvcHVsbC8yMTg0I2lzc3VlY29tbWVudC01NDQ4MzA0NDUKCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QK
b3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3Jn
L21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
