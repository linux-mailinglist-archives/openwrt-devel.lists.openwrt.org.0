Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 409E61786A9
	for <lists+openwrt-devel@lfdr.de>; Wed,  4 Mar 2020 00:49:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=df9OpjR0V+8N9wSNvuCIiqL49mIlKJa8S7km9NkYWa8=; b=ame8Dnv7isVyET
	kI5HrerORQ/UQ0+r7WCCipR6mZlLu4aJU/Vwc+9+O3t12qS01LDDHHqz/uKwhB/flDRZ3EO8yVKmK
	9yioG/gV7WHxT3tG2qJ6bXQRPuJR3i61Iwd8ap0RFjklpvFvat/i1Kk0oKY8kht2lfIz40qNh5ce8
	hwCMtKDRyuNsMjkN0lql2Czu51DgQxcxY979RIvjV03zFEC7zR4SwG9ObwQod6EzfnxRY+0G5MHlz
	H6dsFKq+SVTzTXfGzkJD1/48LBTyBNsge9Fgo6dRIEjMulc0xscbGgHrf7TnDUlcnRYgtAVBHqNPj
	vOPYIt8N5wk/vTwWaFjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9HID-0004xf-0P; Tue, 03 Mar 2020 23:49:41 +0000
Received: from mail.tintel.eu ([2001:41d0:8:1644:0:ff:fe5c:6a54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9HI5-0004xG-Bu
 for openwrt-devel@lists.openwrt.org; Tue, 03 Mar 2020 23:49:34 +0000
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id 21D08472FE50;
 Wed,  4 Mar 2020 00:49:31 +0100 (CET)
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10032)
 with ESMTP id PFiuqQNWgOp5; Wed,  4 Mar 2020 00:49:30 +0100 (CET)
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id 5F232471D3B1;
 Wed,  4 Mar 2020 00:49:30 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.tintel.eu 5F232471D3B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux-ipv6.be;
 s=502B7754-045F-11E5-BBC5-64595FD46BE8; t=1583279370;
 bh=p8MiGE7q7RumQ/lKvwJSHAqxUnEaVXca1wq7aUypA0M=;
 h=To:From:Message-ID:Date:MIME-Version;
 b=Pm81RyhW8N8s+wfT0aQ0lAQ0utqjfAEv/y9YwwRKR9/pGSX5tx0dSTuwTwzY3WxMb
 p+Kqk2xdu+DX2ohYFKIpT0j6pn4nQrLfgHuQKbDOq9u4xlgi+elhpitwvOMiG/Yxzk
 CJJOItFgzzdi7ZyUXF27ZoVJOfHJTNoiy3omyggs=
X-Virus-Scanned: amavisd-new at mail.tintel.eu
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10026)
 with ESMTP id I_gWrNmqKSm5; Wed,  4 Mar 2020 00:49:30 +0100 (CET)
Received: from [IPv6:2001:67c:21bc:24:92a0:d683:3fa4:10c7] (unknown
 [IPv6:2001:67c:21bc:24:92a0:d683:3fa4:10c7])
 (Authenticated sender: stijn@tintel.eu)
 by mail.tintel.eu (Postfix) with ESMTPSA id 5FEF146D19A2;
 Wed,  4 Mar 2020 00:49:29 +0100 (CET)
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>,
 openwrt-devel@lists.openwrt.org
References: <20200303152136.13801-1-ynezz@true.cz>
From: Stijn Tintel <stijn@linux-ipv6.be>
Message-ID: <2b756d92-8863-2212-ae16-2a94591368c4@linux-ipv6.be>
Date: Wed, 4 Mar 2020 01:49:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200303152136.13801-1-ynezz@true.cz>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_154933_554818_0ED5A361 
X-CRM114-Status: UNSURE (   6.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] kernel: iio: split buffer modules
 into separate packages
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gMy8wMy8yMDIwIDE3OjIxLCBQZXRyIMWgdGV0aWFyIHdyb3RlOgo+IE90aGVyd2lzZSB3ZSB3
b3VsZCBuZWVkIHRvIGVuYWJsZSBJSU9fVFJJR0dFUkVEX0JVRkZFUiBzeW1ib2wgaW4gYWxsCj4g
a2VybmVscyBpbiBvcmRlciB0byBiZSBhYmxlIHRvIHVzZSBhbnkgb2YgdGhlIElJTyBtb2R1bGVz
IHdoaWNoIGFyZQo+IHV0aWxpemluZyB0cmlnZ2VyZWQgYnVmZmVyIGJhc2VkIGRhdGEgYWNxdWlz
aXRpb24gbWV0aG9kLgpBY2tlZC1ieTogU3Rpam4gVGludGVsIDxzdGlqbkBsaW51eC1pcHY2LmJl
PgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3Blbndy
dC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRw
czovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
