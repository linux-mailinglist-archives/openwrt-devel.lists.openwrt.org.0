Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0937B195F68
	for <lists+openwrt-devel@lfdr.de>; Fri, 27 Mar 2020 21:05:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Pl8OVpgUZTpRFWhoplK4YY2k+1koJWfiy1xTfmqFUug=; b=hgPgCzBv5WiDKDN8nD3KD+/Uu
	NMQXuHhnn4O2xJ/MQsATUpeK9W2DCTDzi1VYcqPedxMEw7+gr32Wt7s6CBbYdchG2puQoEC1tla2x
	xHZMG8W01S2EMr6BuKM9xn2d6l25o4YRyP3Ey0fZ2JYs09xzquWzkcblaF6aS37DZp8EBgo2JAvTX
	1mMZuzhzQd1wzD1aRDw+6OiMvjttimPcd0+Yc5AEVTKJJNB4ar1EC1G1lWXTpYAao/9e9FOFNtMtr
	88I1dMatHaqQ7gzxdwpQy0CY8PTNUbcq7sUK8rj1s+p4EHkHiY232yAUxIQp+fdFC8OFwVUJUM4N1
	htIWG1RRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHvEa-0002Cs-SD; Fri, 27 Mar 2020 20:05:40 +0000
Received: from lmr1.uibk.ac.at ([138.232.1.142] helo=smtp.uibk.ac.at)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHvEU-0002BD-0q
 for openwrt-devel@lists.openwrt.org; Fri, 27 Mar 2020 20:05:35 +0000
Received: from mysh.local (ip5f5ac5c6.dynamic.kabel-deutschland.de
 [95.90.197.198]) (authenticated bits=0)
 by smtp.uibk.ac.at (8.14.4/8.14.4/F1) with ESMTP id 02RK5QRc001007
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
 for <openwrt-devel@lists.openwrt.org>; Fri, 27 Mar 2020 21:05:27 +0100
To: openwrt-devel@lists.openwrt.org
References: <20200327123608.198650-1-peter.stadler@student.uibk.ac.at>
From: Peter Stadler <peter.stadler@student.uibk.ac.at>
Message-ID: <e663c05a-76b1-1a33-2503-40d8019e435b@student.uibk.ac.at>
Date: Fri, 27 Mar 2020 21:05:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200327123608.198650-1-peter.stadler@student.uibk.ac.at>
Content-Language: en-US
X-Spam-Score: () -15.0 ALL_TRUSTED,RCV_SMTP_AUTH,RCV_SMTP_UIBK
X-Scanned-By: MIMEDefang 2.84 at uibk.ac.at
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_130534_384479_03B326B7 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [138.232.1.142 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [138.232.1.142 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: Re: [OpenWrt-Devel] [PATCH] netifd: fix 14_migrate-dhcp-release
 script
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

T3IgJ3VjaV9jb21taXQgbmV0d29yaycg4oCmCgpPbiAyNy4wMy4yMCAxMzozNiwgUGV0ZXIgU3Rh
ZGxlciB3cm90ZToKPiBwcmVwZW5kICd1Y2knIHRvICdjb21taXQgbmV0d29yaycKPgo+IFNpZ25l
ZC1vZmYtYnk6IFBldGVyIFN0YWRsZXIgPHBldGVyLnN0YWRsZXJAc3R1ZGVudC51aWJrLmFjLmF0
Pgo+IC0tLQo+ICAgLi4uL25ldGlmZC9maWxlcy9ldGMvdWNpLWRlZmF1bHRzLzE0X21pZ3JhdGUt
ZGhjcC1yZWxlYXNlICAgICAgIHwgMiArLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
KCspLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvcGFja2FnZS9uZXR3b3JrL2NvbmZp
Zy9uZXRpZmQvZmlsZXMvZXRjL3VjaS1kZWZhdWx0cy8xNF9taWdyYXRlLWRoY3AtcmVsZWFzZSBi
L3BhY2thZ2UvbmV0d29yay9jb25maWcvbmV0aWZkL2ZpbGVzL2V0Yy91Y2ktZGVmYXVsdHMvMTRf
bWlncmF0ZS1kaGNwLXJlbGVhc2UKPiBpbmRleCA2NTFjNDM3Y2IyLi5mMWIzODRlZWNjIDEwMDY0
NAo+IC0tLSBhL3BhY2thZ2UvbmV0d29yay9jb25maWcvbmV0aWZkL2ZpbGVzL2V0Yy91Y2ktZGVm
YXVsdHMvMTRfbWlncmF0ZS1kaGNwLXJlbGVhc2UKPiArKysgYi9wYWNrYWdlL25ldHdvcmsvY29u
ZmlnL25ldGlmZC9maWxlcy9ldGMvdWNpLWRlZmF1bHRzLzE0X21pZ3JhdGUtZGhjcC1yZWxlYXNl
Cj4gQEAgLTE4LDYgKzE4LDYgQEAgbWlncmF0ZV9yZWxlYXNlKCkgewo+ICAgCj4gICBjb25maWdf
bG9hZCBuZXR3b3JrCj4gICBjb25maWdfZm9yZWFjaCBtaWdyYXRlX3JlbGVhc2UgaW50ZXJmYWNl
Cj4gLWNvbW1pdCBuZXR3b3JrCj4gK3VjaSBjb21taXQgbmV0d29yawo+ICAgCj4gICBleGl0IDAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQt
ZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6
Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
