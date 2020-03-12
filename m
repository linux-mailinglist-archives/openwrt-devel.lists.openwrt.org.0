Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7CBE1832F0
	for <lists+openwrt-devel@lfdr.de>; Thu, 12 Mar 2020 15:27:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ysJli6MNb0P6T8MzGw9+WL8kfdZcN+zQtuH27Fg5esM=; b=FPATSckYRNzL+A
	Sznk2UXoc/SpUTLLdscV0NVddUl1xHyLhCcXJjchvQKKk2HQH7dlPd3JeVXSCuUn4eGDjGGZL269h
	QA9tYnO8B/+XdGR3HHr8WbhiEXNT3wiJDCSsjxY3Cymbpk53N5SKFKneVh+itIIsCz05xd95v+EGW
	wQXPa9drZYeqOyk1TDxqpzQSLaKD3KxmaBB63S5KRufcnYGSxv/+GQNXqBDEDbcmmYUFhLjXZPxhA
	bmiuq2Fx87Q8Lc1E0uib4AfQA3xDm/Q9Ab5l00P9ISdabxigt4rG3hbnIZRYbu8+eNKN9IyyE0t8R
	2sZavDA8N1VWyceqpe9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCOni-000720-Gg; Thu, 12 Mar 2020 14:27:06 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCOnb-00071N-Jf
 for openwrt-devel@lists.openwrt.org; Thu, 12 Mar 2020 14:27:01 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue011
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1Md6dH-1jlSQm3DtL-00aGDO; Thu, 12
 Mar 2020 15:26:47 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Evgeniy Didin'" <Evgeniy.Didin@synopsys.com>,
 <openwrt-devel@lists.openwrt.org>
References: <20200312133501.17939-1-Evgeniy.Didin@synopsys.com>
 <20200312133501.17939-5-Evgeniy.Didin@synopsys.com>
In-Reply-To: <20200312133501.17939-5-Evgeniy.Didin@synopsys.com>
Date: Thu, 12 Mar 2020 15:26:47 +0100
Message-ID: <006001d5f87a$43679ca0$ca36d5e0$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQE+DGtrP+2iv5uPH6UUBgYiCSdzvALERljKqV65W9A=
Content-Language: de
X-Provags-ID: V03:K1:/6UnxT9egXSMqAZjVkUPvOV9mF1wKceSHpe+hVYV0stnkOcCOUq
 Oy0ZKiDB1C8/xhLDI8o75fqIigTyk+JcSs8e3TSsjLeciQT+YBcyAUE3BqJfEQle0oBUQwM
 Kh3tNmxNANIcxpX2/++uv7N6z1NgPq4Krh0YbWPg9nqbLCuZctPV9MafsS7WPIDbnNa8JDT
 TG0Ej2ym30b1XLjgcyMTw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:khdqqRfc3PE=:cgKbbeDCJmCD0nlf38FDzW
 /2CTHJGrsmnkjWlWcvM6tKcWmQgaE6D6pb6I1pwXQOuSFdpYQrcNgjcFEEEVKHbewD5tspIfM
 +fR1LwS2ofXbBh2ESZhPFZTLi8UI1gf6SPCuaVUctF/LmJTAq/Jx1HwJD5nBb02KdtlLCLpUe
 YGtBfht90cJG7cejBev1OltXKyvgxrzNQsGPAlaAZsm6JDaZn1/FnJ7Hkh9CRZpsCzOg7G5ZJ
 7kFGg3ZlASe1jbbSEzshwMzsU/skykTL8zZ8dFae7AcWCq5HW2b+mE7etBvFFWhHGmdg50a6I
 TzzSrrpB3KWvE+Exp67mn571jvAbht8N4NrxovNh651PkU15HSyLdl0kCgMiOQ2Le+LyBNZXI
 NvkYuHsJtMOgWS+yBNxW18g8XzoZcGj5LO/LPqzK+vm+6puyxE+pnkSqGgIvnYuaECrYZx6ll
 trr+yTUxQNMWQB1estG9/xIQ3/kbcXiB/BFfxvuEZrBGYn+wffDXt+EvIsiigE7ux7Z2nv56n
 huX1+l2eCfOm3EbqLnaBlOHZzQhGxerwOy49km/XnAAQyMy/xaxxPQxxYIbrsDpPGFOXpOHSc
 Zx7ZxumQnoEvW2eP13HMXJ3WIvKRhbRx7l0pEHkI5gctEg47QEKj3PAt8RqI6ayXIPFvt7r3j
 mx6o5EzwwSWKBWoAPrrSqmqwbPdC+/7CT521ls05R4URilDXZD1GjKybsCDNVtfDPYJ6URH0K
 bn/C6TXxh2W3czVERYVkqIdVoNldZDTjq74uxkHAyj7BPVJHCfnjHAUxwb5x3ZoGTa2bcJyow
 tQb1HcWw/09UFED70WLn3Bkp2i90CqZzKW2wJ9ZVuY9FHEgb8mRA/B9WbQt4XND5x/cmOSh
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_072659_940003_890FA34E 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 4/5] archs38: remove ath9k-htc package
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
Cc: 'Hauke Mehrtens' <hauke@hauke-m.de>,
 =?utf-8?Q?'Petr_=C5=A0tetiar'?= <ynezz@true.cz>,
 'Alexey Brodkin' <Alexey.Brodkin@synopsys.com>,
 'John Crispin' <john@phrozen.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+IEZyb206IG9wZW53cnQtZGV2ZWwgW21haWx0
bzpvcGVud3J0LWRldmVsLWJvdW5jZXNAbGlzdHMub3BlbndydC5vcmddIE9uCj4gQmVoYWxmIE9m
IEV2Z2VuaXkgRGlkaW4KPiBTZW50OiBEb25uZXJzdGFnLCAxMi4gTcOkcnogMjAyMCAxNDozNQo+
IFRvOiBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCj4gQ2M6IEV2Z2VuaXkgRGlkaW4g
PEV2Z2VuaXkuRGlkaW5Ac3lub3BzeXMuY29tPjsgSGF1a2UgTWVocnRlbnMKPiA8aGF1a2VAaGF1
a2UtbS5kZT47IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+OyBBbGV4ZXkgQnJvZGtpbgo+
IDxBbGV4ZXkuQnJvZGtpbkBzeW5vcHN5cy5jb20+OyBKb2huIENyaXNwaW4gPGpvaG5AcGhyb3pl
bi5vcmc+Cj4gU3ViamVjdDogW09wZW5XcnQtRGV2ZWxdIFtQQVRDSCA0LzVdIGFyY2hzMzg6IHJl
bW92ZSBhdGg5ay1odGMgcGFja2FnZQoKV2h5PyAtPiBjb21taXQgbWVzc2FnZSAuLi4KCj4gCj4g
U2lnbmVkLW9mZi1ieTogRXZnZW5peSBEaWRpbiA8RXZnZW5peS5EaWRpbkBzeW5vcHN5cy5jb20+
Cj4gQ2M6IEFsZXhleSBCcm9ka2luIDxhYnJvZGtpbkBzeW5vcHN5cy5jb20+Cj4gQ2M6IFBldHIg
xaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Cj4gQ2M6IEhhdWtlIE1laHJ0ZW5zIDxoYXVrZUBoYXVr
ZS1tLmRlPgo+IENjOiBKb2huIENyaXNwaW4gPGpvaG5AcGhyb3plbi5vcmc+Cj4gLS0tCj4gIHRh
cmdldC9saW51eC9hcmNoczM4L2dlbmVyaWMvcHJvZmlsZXMvMDAtZGVmYXVsdC5tayB8IDMgKy0t
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBk
aWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2FyY2hzMzgvZ2VuZXJpYy9wcm9maWxlcy8wMC1kZWZh
dWx0Lm1rCj4gYi90YXJnZXQvbGludXgvYXJjaHMzOC9nZW5lcmljL3Byb2ZpbGVzLzAwLWRlZmF1
bHQubWsKPiBpbmRleCBlYzliYmJiMTlmLi42YzBmMWJjMjkxIDEwMDY0NAo+IC0tLSBhL3Rhcmdl
dC9saW51eC9hcmNoczM4L2dlbmVyaWMvcHJvZmlsZXMvMDAtZGVmYXVsdC5tawo+ICsrKyBiL3Rh
cmdldC9saW51eC9hcmNoczM4L2dlbmVyaWMvcHJvZmlsZXMvMDAtZGVmYXVsdC5tawo+IEBAIC0z
LDExICszLDEwIEBACj4gICMKPiAgIyBUaGlzIGlzIGZyZWUgc29mdHdhcmUsIGxpY2Vuc2VkIHVu
ZGVyIHRoZSBHTlUgR2VuZXJhbCBQdWJsaWMgTGljZW5zZSB2Mi4KPiAgIyBTZWUgL0xJQ0VOU0Ug
Zm9yIG1vcmUgaW5mb3JtYXRpb24uCj4gLSMKPiAKPiAgZGVmaW5lIFByb2ZpbGUvRGVmYXVsdAo+
ICAJTkFNRTo9RGVmYXVsdCBQcm9maWxlIChhbGwgZHJpdmVycykKPiAtCVBBQ0tBR0VTOj0ga21v
ZC11c2IyIGttb2QtYXRoOWstaHRjIHdwYWQtYmFzaWMKPiArCVBBQ0tBR0VTOj0ga21vZC11c2Iy
IHdwYWQtYmFzaWMKPiAgZW5kZWYKPiAKPiAgZGVmaW5lIFByb2ZpbGUvRGVmYXVsdC9EZXNjcmlw
dGlvbgo+IC0tCj4gMi4yMy4wCj4gCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPiBvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdAo+IG9wZW53cnQt
ZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKPiBodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxt
YW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2
ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xp
c3RpbmZvL29wZW53cnQtZGV2ZWwK
