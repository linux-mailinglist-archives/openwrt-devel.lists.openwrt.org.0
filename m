Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B9C411E469
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Dec 2019 14:16:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4rC39pq49kfJOgtreI7AQfQ/TS8Q9CoeS1HTE6Ui/DY=; b=H8KzgpX/fQIf9u
	FRqqVrJczx+nZ5OCS04drizhbIiIbPCP9Sa79qMvJTzpRiLK9+AukGwwHMsGVSLhxdARrJcg9abwy
	kST2p1rO2veU3omYNJnHla6OrHOroJmavIA7BrYhuJV4HYd+O6MHOhmslAkuySybwS6YrS8KAgCK6
	5azcY5QkRbo9P5tF2YRe5rRwtRNpC3lUJBUQItRcS9oZIP8keSw2AjXwhIbExUqEltjee2wIf/Zlv
	aKNqKOngfmScb6Sn4YNXrw5plk9CeUHOqx4/UyiP2saioo1ebPWF6G8kVD5+k2hn6bv0jaIlOZ/KE
	/EnmkAS9EbHg+RzZB+1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifko4-0001kx-Ce; Fri, 13 Dec 2019 13:16:32 +0000
Received: from mx-out.tlen.pl ([193.222.135.148])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifknv-0001kF-GF
 for openwrt-devel@lists.openwrt.org; Fri, 13 Dec 2019 13:16:25 +0000
Received: (wp-smtpd smtp.tlen.pl 11979 invoked from network);
 13 Dec 2019 14:16:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1576242976; bh=gf61MO3IfsNA0c0z86SA8ed82IaL+C/ut1DK2O8iEnI=;
 h=Subject:To:From;
 b=PXhny6d9goBwJLmz/scabnQ6Y2VpxyEy1z2rACmZaj58iImwo6u5mE6Z7vyC984MX
 QLQFAJ7VUw9HPfgJu6zgk4CX8ynxVliA4CCiCu7CzZkZ4yML+9Axi0lWXzxql77MOV
 o/iS5Q0rBE8u9npmX6MtqS8JdFofU6On7qfxOPHY=
Received: from 131.ip-164-132-48.eu (HELO [10.8.0.6])
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 13 Dec 2019 14:16:16 +0100
To: Adrian Schmutzler <mail@adrianschmutzler.de>,
 openwrt-devel@lists.openwrt.org
References: <20191207222826.47389-1-freifunk@adrianschmutzler.de>
 <20191207222826.47389-3-freifunk@adrianschmutzler.de>
 <c548878d-5a73-6530-168b-f42057b124c3@o2.pl>
 <008b01d5b00f$ac39ba00$04ad2e00$@adrianschmutzler.de>
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
Message-ID: <d482001d-cb94-a41d-7499-efb8c278c757@o2.pl>
Date: Fri, 13 Dec 2019 14:16:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <008b01d5b00f$ac39ba00$04ad2e00$@adrianschmutzler.de>
Content-Language: en-US
X-WP-MailID: ef3ac9444fadceed72b342128ddd64a1
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [oUPw]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_051623_866064_15B3A7A0 
X-CRM114-Status: GOOD (  16.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] sunxi: construct DTS name from
 device node name and SOC
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

VyBkbml1IDExLjEyLjIwMTkgb8KgMTE6NDIsIEFkcmlhbiBTY2htdXR6bGVyIHBpc3plOgo+IEhp
LAo+IAo+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+PiBGcm9tOiBUb21hc3ogTWFjaWVq
IE5vd2FrIFttYWlsdG86dG9tZWtfbkBvMi5wbF0KPj4gU2VudDogRGllbnN0YWcsIDEwLiBEZXpl
bWJlciAyMDE5IDE0OjM5Cj4+IFRvOiBBZHJpYW4gU2NobXV0emxlciA8ZnJlaWZ1bmtAYWRyaWFu
c2NobXV0emxlci5kZT47IG9wZW53cnQtCj4+IGRldmVsQGxpc3RzLm9wZW53cnQub3JnCj4+IFN1
YmplY3Q6IFJlOiBbT3BlbldydC1EZXZlbF0gW1BBVENIIDIvMl0gc3VueGk6IGNvbnN0cnVjdCBE
VFMgbmFtZSBmcm9tCj4+IGRldmljZSBub2RlIG5hbWUgYW5kIFNPQwo+Pgo+PiBIaSBBZHJpYW4u
Cj4+Cj4+IFcgZG5pdSAwNy4xMi4yMDE5IG/CoDIzOjI4LCBBZHJpYW4gU2NobXV0emxlciBwaXN6
ZToKPj4+IFRoZSBkZXZpY2UgcGFydCBpbiB0aGUgU1VOWElfRFRTIHZhcmlhYmxlIGFsd2F5cyBj
b3JyZXNwb25kcyB0bwo+Pj4gZGV2aWNlIG5vZGUgbmFtZS4gVGhpcyBpcyBhbm90aGVyIHJlZHVu
ZGFuY3kgdGhhdCBjYW4gYmUgcmVtb3ZlZAo+Pj4gYnkgY2FsY3VsYXRpbmcgdGhlIERUUyBuYW1l
IGZyb20gYSBuZXdseSBpbnRyb2R1Y2VkIFNVTlhJX1NPQwo+Pj4gdmFyaWFibGUgYW5kIHRoZSBu
b2RlIG5hbWUuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogQWRyaWFuIFNjaG11dHpsZXIgPGZyZWlm
dW5rQGFkcmlhbnNjaG11dHpsZXIuZGU+Cj4+PiAtLS0KPj4+ICB0YXJnZXQvbGludXgvc3VueGkv
aW1hZ2UvTWFrZWZpbGUgICAgICB8ICA1ICsrLQo+Pj4gIHRhcmdldC9saW51eC9zdW54aS9pbWFn
ZS9jb3J0ZXgtYTUzLm1rIHwgMTggKysrKysrKy0tLS0KPj4+ICB0YXJnZXQvbGludXgvc3VueGkv
aW1hZ2UvY29ydGV4LWE3Lm1rICB8IDQ0ICsrKysrKysrKysrKystLS0tLS0tLS0tLS0tCj4+PiAg
dGFyZ2V0L2xpbnV4L3N1bnhpL2ltYWdlL2NvcnRleC1hOC5tayAgfCAxMyArKysrLS0tLQo+Pj4g
IDQgZmlsZXMgY2hhbmdlZCwgNDUgaW5zZXJ0aW9ucygrKSwgMzUgZGVsZXRpb25zKC0pCj4+Pgo+
Pj4gZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9zdW54aS9pbWFnZS9NYWtlZmlsZQo+PiBiL3Rh
cmdldC9saW51eC9zdW54aS9pbWFnZS9NYWtlZmlsZQo+Pj4gaW5kZXggMDRlMGFiZWU0OS4uOTI5
ZjRjNzBmOSAxMDA2NDQKPj4+IC0tLSBhL3RhcmdldC9saW51eC9zdW54aS9pbWFnZS9NYWtlZmls
ZQo+Pj4gKysrIGIvdGFyZ2V0L2xpbnV4L3N1bnhpL2ltYWdlL01ha2VmaWxlCj4+PiBAQCAtMzIs
MTIgKzMyLDE1IEBAIGVuZGVmCj4+PiAgIyB3aHkgXHgwMFx4MDBceDAwXHgwMCBmb3IgekltYWdl
LWluaXRyYW1mcwo+Pj4gIGRlZmluZSBEZXZpY2UvRGVmYXVsdAo+Pj4gICAgUFJPRklMRVMgOj0g
RGVmYXVsdAo+Pj4gLSAgREVWSUNFX1ZBUlMgOj0gU1VOWElfRFRTIFNVTlhJX1VCT09UCj4+PiAr
ICBERVZJQ0VfVkFSUyA6PSBTVU5YSV9TT0MgU1VOWElfRFRTIFNVTlhJX0RUU19ESVIgU1VOWElf
VUJPT1QKPj4KPj4gSW5zdGVhZCBvZiBhZGRpbmcgbmV3IHRhcmdldCBzcGVjaWZmaWMgdmFyaWFi
bGVzLCB3b3VsZG4ndCB1c2luZyBhbHJlYWR5Cj4+IHNwZWNpZmllZCBvbmVzIGJlIGJldHRlcj8g
V2UgaGF2ZSBERVZJQ0VfRFRTIGFuZCBERVZJQ0VfRFRTX0RJUi4gQWxzbyB0aGUKPiAKPiBCYXNl
ZCBvbgo+IGh0dHBzOi8vZ2l0aHViLmNvbS9vcGVud3J0L29wZW53cnQvY29tbWl0LzdhOGQzNDMy
YzczOWM2ZmYwMzgyOTUxNzZlOGI2MzI0ZTkyZmMxMTYKPiBJIGhhZCB0aGUgaW1wcmVzc2lvbiB0
aGF0IERFVklDRV9EVFMgYW5kIERFVklDRV9EVFNfRElSIGFyZSByZXNlcnZlZCBrZXl3b3JkcyBm
b3IgYSBwYXJ0aWN1bGFyIG1lY2hhbmlzbSB0byBhcHBlbmQgRFRCLgoKVGhlc2UgYXJlIG5vdCBy
ZXNlcnZlZCBhdCBhbGwuIE90aGVyIHRhcmdldHMgdXNlIGl0LgoKPiAKPiBUaHVzLCBhbmQgc2lu
Y2UgdGhlIHRhcmdldCBoYXMgYmVlbiB1c2luZyAiY3VzdG9tIiBTVU5YSV9EVFMgdmFyaWFibGUg
c28gZmFyLCBJIGRlY2lkZWQgdG8gc3RpY2sgdG8gdGhhdCBwYXR0ZXJuLgoKTG9va2luZyBhdCBn
aXQgaGlzdG9yeSB0aGF0IHZhcmlhYmxlIHByZWNlZGVzIERFVklDRV9EVFMsIHNvIEkgYXNzdW1l
IHRoZXJlIHdhcwpubyBvbmUgYm90aGVyZWQgdG8gY29udmVydCBpdCB3aGVuIGdsb2JhbCBvbmUg
d2FzIGludHJvZHVjZWQuIE5vdyBpcyBiZXN0IHRpbWUKdG8gZG8gdGhhdC4KCj4gCj4+IFNVTlhJ
X1NPQyBmZWVscyBiaXQgcmVkdW5kYW50IHNpbmNlIGl0IG5lZWRzIHRvIGJlIHNwZWNpZmllZCBm
b3IgZWFjaCBkZXZpY2UKPj4gYW5kIGl0IGNvdWxkIGJlIHJlcGxhY2VkIHdpdGggREVWSUNFX0RU
UyA6PSBzdW41MGktaDUtJCgxKSBvciBzaW1wbHkgZnVsbCBkdHMKPj4gbmFtZS4KPiAKPiBObywg
YmVjYXVzZSBJIG5lZWQgdG8gY3V0IGRvd24gdGhlIGRldmljZSBuYW1lLCBzbyBpdCB3b3VsZCBi
ZQo+IERFVklDRV9EVFMgOj0gc3VuNTBpLWg1LSQobGFzdHdvcmQgJChzdWJzdCBfLCAsJCgxKSkp
Cj4gd2hpY2ggSSB3b3VsZCBub3QgbGlrZSB0byByZXBlYXQgb3ZlciBhbmQgb3Zlci4KClllYWgs
IGZvcmdvdCBhYm91dCByZXBsYWNpbmcgc2VwYXJhdG9yIHdpdGggZGFzaC4KCj4gCj4gSSBhZG1p
dCB0aGF0IGNoYW5naW5nIHRoZSBEVFMgdmFyaWFibGUgaXMgdGhlIHdlYWtlc3QgcGFydCBpbiBt
eSBwYXRjaHNldC4gSG93ZXZlciwgSSB0aGluayBpbnRyb2R1Y2luZyB0aGUgU1VOWElfU09DIGFu
ZCBTVU5YSV9EVFNfRElSIHdpbGwgbWFrZSB0aGUgdGFyZ2V0IG1vcmUgb3JnYW5pemVkLiBEZXNw
aXRlLCBieSB0aGlzIGl0IGJlY29tZXMgbW9yZSBjb25zaXN0ZW50IHdpdGggb3RoZXIgdGFyZ2V0
cyB3aGVyZSB0aGlzIGhhcyBiZWVuIHJlb3JnYW5pemVkIHJlY2VudGx5IChpLmUuIGF0aDc5IGFu
ZCByYW1pcHMsIHdoZXJlIHdlIHVzZSBBVEhfU09DIGFuZCBNVEtfU09DIHRvIGRvIHRoZSB2ZXJ5
IHNhbWUpLgo+IEF0IGxlYXN0IEkgcGVyc29uYWxseSB0aGluayB0aGF0IHRoaXMgaXMgYmV0dGVy
IHRoYXQgcmVwZWF0aW5nIHRoZSB2ZXJ5IHNhbWUgbmFtZSBhZ2FpbiBpbiB0aGUgRFRTIGRlZmlu
aXRpb24uCgpXZWxsLCBJJ3ZlIG5vIHN0cm9uZyBmZWVsaW5ncyBhZ2FpbnN0IHVzaW5nIFNVTlhJ
X1NPQywgaXQncyByZWFzb25hYmxlIGdpdmVuCllvdXIgZXhwbGFuYXRpb24sIGJ1dCBTVU5YSV9E
VFNfRElSIHNob3VsZCBiZSBjaGFuZ2VkIHRvIGdsb2JhbCBvbmUuCgo+IAo+IEJlc3QKPiAKPiBB
ZHJpYW4KPiAKClJlZ2FyZHMKCi0tIApUTU4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2
ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xp
c3RpbmZvL29wZW53cnQtZGV2ZWwK
