Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F1F25E26D
	for <lists+openwrt-devel@lfdr.de>; Wed,  3 Jul 2019 13:03:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DBBioPHrrActGOLmkU0aafduqNniswoTV/SsURFyIfk=; b=Lxtqj8na48k9BVmvHWWC7nCtF
	08TS4pDSCAG7BydxoUyOek/9yYWH8LBpWul6WuMXsE+Us9kWGsbPD9OEcyODPiOkSEZPlhg4ZzJUl
	hoNTOdhEBvlGCXbgNY/CRIRXj+P5WH10SO2FE+zrN81STV8dS2N0FDWJ8Om9d12YB8WU5w1IIrUHu
	gPEi0mt8hEVxL1IhsmPIjq+0Up20FHQ3AU8Pbt3zi81UjoWTtCaMmpOWCPP6776LAOeFkqDvIVwz8
	Qi4yOr1dkuKP7I5Wl5NSBDmvrRgHaEpVwTuF3t57fqd1TVa+V/6ubHFcrUy3q8g0Fq79Dp+//9hUd
	lIp7AaU5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hid2P-0002ch-N5; Wed, 03 Jul 2019 11:02:57 +0000
Received: from mail.nic.br ([2001:12ff:0:4::5])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hid24-0002bz-6M
 for openwrt-devel@lists.openwrt.org; Wed, 03 Jul 2019 11:02:38 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.nic.br (Postfix) with ESMTP id 895CF12FE46;
 Wed,  3 Jul 2019 08:02:24 -0300 (-03)
Authentication-Results: mail.nic.br (amavisd-new); dkim=pass (1024-bit key)
 header.d=nic.br
Received: from mail.nic.br ([127.0.0.1])
 by localhost (mail.nic.br [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pJ_C1cqJSC-M; Wed,  3 Jul 2019 08:02:24 -0300 (-03)
Received: from 5.141.net.registro.br (unknown [IPv6:2001:12ff:0:5::141])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: henrique@nic.br)
 by mail.nic.br (Postfix) with ESMTPSA id 54ABB12FE44;
 Wed,  3 Jul 2019 08:02:24 -0300 (-03)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=nic.br; s=dkim;
 t=1562151744; bh=vjI7wVV4rEj5vyOun7sT+rx6odNmAJGK+FY9iaQEJNs=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=B2l5awcRQZRd3IAJmFbYUhVFxo+ZiyHDjQeAYs44vJkkHH7rR7U3qe0csxYOKM20M
 dZiOCgKIZGkx+Q7V0XydDlsGHMUhhqJflxpFh0mbhsum7eSFdM+AvaXunsWd1+7H8D
 sVlXNGz0jw/rzzhQXI2nBrA6gwy+VZnsN0ZpsT0k=
To: Paul Spooren <mail@aparcar.org>,
 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>
References: <1976f014-56cf-3b16-00b0-638165f71f4b@aparcar.org>
From: Henrique de Moraes Holschuh <henrique@nic.br>
Organization: NIC.br
Message-ID: <8af76b22-8c67-f395-8330-622518aacd9e@nic.br>
Date: Wed, 3 Jul 2019 08:02:24 -0300
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <1976f014-56cf-3b16-00b0-638165f71f4b@aparcar.org>
Content-Language: pt-BR
DMARC-Filter: OpenDMARC Filter v1.3.1 mail.nic.br 54ABB12FE44
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_040236_711442_9F3B9885 
X-CRM114-Status: GOOD (  11.75  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:12ff:0:4:0:0:0:5 listed in] [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [RFC]split DEVICE_TITLE in multiple variables
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

RW0gMDIvMDcvMjAxOSAxNDowMSwgUGF1bCBTcG9vcmVuIGVzY3JldmV1Ogo+IHNvbWUgZGF5cyBh
Z28gSSB3cm90ZSB0aGlzIHByb3Bvc2FsWzBdIHRvIHNwbGl0IERFVklDRV9USVRMRSBpbgo+IERF
VklDRV9WRU5ET1IsIERFVklDRV9NT0RFTCBhbmQgREVWSUNFX1ZBUklBTlQgKGhvbGRpbmcgcmV2
aXNpb25zIGFuZAo+IHN0b3JhZ2Ugc2l6ZXMgaWYgYXBwbGljYWJsZSkuCj4gCj4gSSBleHRlbmRl
ZCB0aGUgaW1hZ2UubWsgdG8gdG8gdXNlIHRoZSBuZXdseSBpbnRyb2R1Y2VkIHZhcmlhYmxlcyBp
Zgo+IERFVklDRV9USVRMRSBpcyBlbXB0eSwgbWVhbmluZyBpdCBjYW4gYmUgdXNlZCBhcyBhIGRy
b3AgaW4uCj4gCj4gIMKgwqAgREVWSUNFX1RJVExFID0gJCQoREVWSUNFX1ZFTkRPUikgJCQoREVW
SUNFX01PREVMKSQkKGlmICQkKHZhbHVlCj4gREVWSUNFX1ZBUklBTlQpLCAkJChERVZJQ0VfVkFS
SUFOVCkpCj4gCj4gVGhpcyBzaW1wbGlmaWVzIGFuZCB1bmlmaWVzIHRoZSBERVZJQ0VfVElUTEUg
Y3JlYXRpb24gYW5kIGludHJvZHVjZXMgdGhlCj4gcG9zc2liaWxpdHkgdG8gc2VhcmNoIGFuZCBz
b3J0IGRldmljZXMgYmFzZWQgb24gdmVuZG9yIGV0Yy4gQSBwcm9vZiBvZgo+IGNvbmNlcHQgaXMg
YXZhaWxhYmxlIGhlcmVbMV0uCj4gCj4gSW4gZnV0dXJlIFBScyBJJ2QgcmV3b3JrIGV4aXN0aW5n
IHRhcmdldHMgKG5vdCBvbmx5IGF0aDc5IGFzIGluIFswXSkgYW5kCj4gc3VnZ2VzdCBkZXZlbG9w
ZXJzIGFkZGluZyBuZXcgZGV2aWNlcyB0byB1c2UgREVWSUNFX01PREVMIHJhdGhlciB0aGFuCj4g
dGhlIGZ1bGwgREVWSUNFX1RJTEUgaW4gdGhlaXIgcGF0Y2hlcy4KPiAKPiBJJ2QgYmUgaGFwcHkg
dG8gaGVhciBzb21lIGNvbW1lbnRzIQoKSWYgdGhpcyBjaGFuZ2VzIHRoZSBERVZJQ0VfVElUTEUg
b2Ygc29tZXRoaW5nLCBpdCB3b3VsZCBiZSByZWFsbHkgCmhlbHBmdWwgdG8gaGF2ZSBhIGxpc3Qg
b2YgdGhlIGFmZmVjdGVkIERFVklDRV9USVRMRVMgKG9sZCBhbmQgbmV3KSAKcG9zdGVkIHNvbWV3
aGVyZS4KCk90aGVyIHRoYW4gdGhhdCBtaW5vciBkZXRhaWwsIHRoYW5rcyBmb3IgZG9pbmcgdGhp
cyEKCi0tIApIZW5yaXF1ZSBkZSBNb3JhZXMgSG9sc2NodWgKQW5hbGlzdGEgZGUgUHJvamV0b3MK
Q2VudHJvIGRlIEVzdHVkb3MgZSBQZXNxdWlzYXMgZW0gVGVjbm9sb2dpYXMgZGUgUmVkZXMgZSBP
cGVyYcOnw7VlcyAKKENlcHRyby5icikKKzU1IDExIDU1MDktMzUzNyBSLjo0MDIzCklOT0MgMjI1
NDgqNjI1Cnd3dy5uaWMuYnIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMu
b3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29w
ZW53cnQtZGV2ZWwK
