Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFEB811E45D
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Dec 2019 14:09:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8tILP9pdPOmk99sM6oEdSxUhYChthLq+vIPk9hs6K3g=; b=nLMHZVleP1NdRr6iFeoAkwGyK
	naTR7EJ25yXotnG7vaZBBEApLtRED15MRdnfVqsDvYQd3xShKyDgesPRR0p1UXMLf2trevr/3JRCr
	WFcpDXru9HAlXt8HfY+pKmaPaaqdEjtdHiLbdXypzeYJb6x+KBhw2oPglkVlqosWLcIBTyv8SdH1Q
	q/YnQwuzLOsrDrXav1PinkbENdL9Cik6SAf+IkramidXaKdcJ7sOyNly1LjdxjJ1a46YVV8F7SDuF
	/174b26Lv5gH5RF6fTAzV6+fE7wqNcVZYRVZXlxmsDLgyzSNYZhaOnheKSPF5a/JLFB1WW93GuzuS
	zhpH3xs6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifkh4-0006Nt-Nn; Fri, 13 Dec 2019 13:09:18 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifkgx-0006NT-4M
 for openwrt-devel@lists.openwrt.org; Fri, 13 Dec 2019 13:09:12 +0000
Received: from pd95fd344.dip0.t-ipconnect.de ([217.95.211.68]
 helo=[192.168.45.104])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1ifkgv-0005ip-NK; Fri, 13 Dec 2019 14:09:09 +0100
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 openwrt-devel@lists.openwrt.org
References: <20191213100512.31373-1-zajec5@gmail.com>
From: John Crispin <john@phrozen.org>
Message-ID: <5c78852e-63f2-2b5e-d964-bd749968842d@phrozen.org>
Date: Fri, 13 Dec 2019 14:09:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20191213100512.31373-1-zajec5@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_050911_331390_EA7AA144 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH fstools 0/2] blocd: fix vlist holding
 devices
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
Cc: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gMTMvMTIvMjAxOSAxMTowNSwgUmFmYcWCIE1pxYJlY2tpIHdyb3RlOgo+IEZyb206IFJhZmHF
giBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KPiAKPiBJIG5vdGljZWQgdGhhdCAidWJ1cyBj
YWxsIGJsb2NrIGluZm8iIHdhcyBsaXN0aW5nIG9ubHkgdGhlIGxhc3QgYWRkZWQKPiBkZXZpY2Vz
IGZvciBtZS4gSXQgaGFzIGFwcGVhcmVkIHRvIGJlIGEgd3Jvbmcgdmxpc3QgdXNhZ2UgKyBtZW1v
cnkKPiBjb3JydXB0aW9uLgo+IAo+IEFmdGVyIHJldmlldy9hcHBseSBJJ2QgbGlrZSB0byBjaGVy
cnktcGljayB0aG9zZSBmaXhlcyB0byAxOS4wNy4KPiAKQWNrZWQtYnk6IEpvaG4gQ3Jpc3BpbiA8
am9obkBwaHJvemVuLm9yZz4KCj4gUmFmYcWCIE1pxYJlY2tpICgyKToKPiAgICBibG9ja2Q6IGZp
eCB2bGlzdCBtZW1vcnkgY29ycnVwdGlvbgo+ICAgIGJsb2NrZDogZG9uJ3QgZmx1c2ggZGV2aWNl
cyBsaXN0IG9uICJob3RwbHVnIiBjYWxsCj4gCj4gICBibG9ja2QuYyB8IDQgKy0tLQo+ICAgMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAzIGRlbGV0aW9ucygtKQo+IAoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFp
bGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5v
cGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
