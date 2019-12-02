Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 953DF10EBB3
	for <lists+openwrt-devel@lfdr.de>; Mon,  2 Dec 2019 15:45:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=drAvzUmWA2EfPqzsKMPzu06uyBRVwfSwNXCAW+4Rjz4=; b=rObaNyhQx24l/S
	xZ0bmy1kB8TIJdFcr+Gaj/PGDsaFPOttezQQjHYsj57wGzBBFv7XktQWHVzW2KdwuOtdr966rKY+p
	5IZekIA8l8QzazW22db9fuU4wBzp8hSj6KXHaeFoNQLlRRsOPv2/1QVXWEgz7kIz/YA1WCa81YYnO
	QeQX1tDxc/xsvk5sHUYkDO6wnUHzzNZzMLLKEaj2HTgBSt0UX1umMIwjnQ9G5HNcFdo28/zmcRgKA
	Qh2c6PPeINFB9jlkA77v69V4yzjiCcVkTOLbIHaarHHDqAGbP/pR3/bNSswCpmQVvPdY6UPRR1rpD
	Cb6q558T4xlkSREK5JsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibmxD-00043B-Bx; Mon, 02 Dec 2019 14:45:35 +0000
Received: from mail.tintel.eu ([54.36.12.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibmx2-00042Y-07
 for openwrt-devel@lists.openwrt.org; Mon, 02 Dec 2019 14:45:25 +0000
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id 2550F4690ACD;
 Mon,  2 Dec 2019 15:45:14 +0100 (CET)
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10032)
 with ESMTP id sdT5GbGtz-if; Mon,  2 Dec 2019 15:45:13 +0100 (CET)
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id 05E1D469DA83;
 Mon,  2 Dec 2019 15:45:13 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.tintel.eu 05E1D469DA83
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux-ipv6.be;
 s=502B7754-045F-11E5-BBC5-64595FD46BE8; t=1575297913;
 bh=2LA+qsPHu5Yk9H+NK4ED/a8vmg5EyjYAc/j/2th9w9k=;
 h=To:From:Message-ID:Date:MIME-Version;
 b=Q0o7cj1zgGs17VipAIwP4SdQWLshwJzUlz+0sPYf/q4WxR78AHHAcGlQ4MeL2/rEh
 V28tHqlnIdxSUUGfnugo+5/C9eYzt9F+lFyoroh2QImlNeml7zEohWw93EkIt08xnM
 eEPIWquPes1FSyj035vmUHw6qld9rPx3Cp4AZeEc=
X-Virus-Scanned: amavisd-new at mail.tintel.eu
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10026)
 with ESMTP id 8ZVJFU9wzzCX; Mon,  2 Dec 2019 15:45:12 +0100 (CET)
Received: from [IPv6:2001:67c:21bc:24:8e2e:68df:f51f:9686] (unknown
 [IPv6:2001:67c:21bc:24:8e2e:68df:f51f:9686])
 (Authenticated sender: stijn@tintel.eu)
 by mail.tintel.eu (Postfix) with ESMTPSA id 0D4B34690ACD;
 Mon,  2 Dec 2019 15:45:11 +0100 (CET)
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>,
 Henrique de Moraes Holschuh <henrique@nic.br>
References: <20191201143316.7641-1-foss@volatilesystems.org>
 <087739b6-da98-2fdd-c1f6-12be8b9d0bd5@nic.br>
 <20191202141205.GK61235@meh.true.cz>
From: Stijn Tintel <stijn@linux-ipv6.be>
Message-ID: <d908963a-fc38-c82e-1818-b295f676a33d@linux-ipv6.be>
Date: Mon, 2 Dec 2019 16:45:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191202141205.GK61235@meh.true.cz>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_064524_334210_031A6BF9 
X-CRM114-Status: UNSURE (   6.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: Re: [OpenWrt-Devel] [PATCH] amd64-microcode: update to 20191021
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
Cc: openwrt-devel@lists.openwrt.org, Stijn Segers <foss@volatilesystems.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gMi8xMi8yMDE5IDE2OjEyLCBQZXRyIMWgdGV0aWFyIHdyb3RlOgo+ICBJJ3ZlIGFkZGVkIHRo
aXMgcGF0Y2ggaW50byBteSBzdGFnaW5nIHRyZWVbNF0gd2l0aCBzb21lIHdhcm5pbmcgYW5kCj4g
d2lsbCBtZXJnZSBpdCB1bmxlc3Mgc29tZW9uZSBOQUsgaXQgaW4gdGhlIG5leHQgMTQgZGF5cy4K
Ck5BSyEKClB1c2hpbmcgY29tbWl0cyB0aGF0IGFyZSBrbm93biB0byByZXN1bHQgaW4gc3lzdGVt
cyBubyBsb25nZXIgYm9vdGluZyBpcwpzaW1wbHkgbm90IGFjY2VwdGFibGUsIGltby4gTm90IGV2
ZXJ5Ym9keSByZWFkcyBnaXQgbG9nLCBzbyBpdCdzIGVhc2lseQpvdmVybG9va2VkLgoKClN0aWpu
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3Blbndy
dC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRw
czovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
