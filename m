Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5AF2192B15
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Mar 2020 15:28:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6vzxh5g1dswD1Bv0krEgXSQX2y047qQJL4fFHkRgTfc=; b=aFH1LavTl3vGjr
	9H02P9Arl29VWkplMBpqeRIzSYI1A1OYD0rlVmAOLiP/8P+o3sOSLd41dopqSIZk7ZvkNkGfMjo+8
	qVISTJdqMfy0/EGA2bsBPohaHhEkEdvmJz3RshwlXlkQQ84ODRcSvXvzIzShU+/OEoxY4K6bdv6Ou
	ti3RWDjfWyesoGIKcvjKTcfZ8s7sKC5An43q2aWRz+23RmxQaj5OX/uZUVQW+1HQb3Uh43Zs9GuTQ
	rZY1AFVEK0d0MXXXKPoYIBz2SJKmwaZH9IAQx5VoX6OgnM1pW2811fqMVLcGyHccwi6HEPiCD8VOP
	EoE7wJi48lc4KhInbNow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH70m-0004Qo-IO; Wed, 25 Mar 2020 14:28:04 +0000
Received: from mx-out.tlen.pl ([193.222.135.145])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH70d-0004QE-Op
 for openwrt-devel@lists.openwrt.org; Wed, 25 Mar 2020 14:27:57 +0000
Received: (wp-smtpd smtp.tlen.pl 16499 invoked from network);
 25 Mar 2020 15:27:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1585146470; bh=moDJPYbOtTPZaXMhjVzarlHvln8LdgSSssGC80LyZBk=;
 h=Subject:To:From;
 b=tcbJOobSmQWT82ttTG94fIf9jpJNgaSw/croAea27CAWTBtbzCru6MnMafrGJWTKD
 XKE07DqGWXddOfLYCLPEgeOq8xgENJvqZIP2apH09XY16bhi4IEXKfX0L8ir/eS0+9
 /vFuEZZ8yj9CJZD3sgYGx2UYP4hhYlg/67AP/n+k=
Received: from unknown (HELO [10.8.0.6]) (tomek_n@o2.pl@[5.2.67.190])
 (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 25 Mar 2020 15:27:50 +0100
To: Paul Spooren <mail@aparcar.org>, openwrt-devel@lists.openwrt.org
References: <20200325045842.425722-1-mail@aparcar.org>
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
Message-ID: <b47c52cd-e97a-72bd-16e5-f18023ca5030@o2.pl>
Date: Wed, 25 Mar 2020 15:27:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200325045842.425722-1-mail@aparcar.org>
Content-Language: en-US
X-WP-MailID: 18fca71cb30a438f33c17f60a6163eb9
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [AVPF]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_072756_132263_F3995EB8 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [193.222.135.145 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tomek_n[at]o2.pl]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] x86: fix offer f2fs/ext4 based overlays
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

SGkgUGF1bC4KClcgZG5pdSAyNS4wMy4yMDIwIG/CoDA1OjU4LCBQYXVsIFNwb29yZW4gcGlzemU6
Cj4gV2l0aCB0aGUgcmVjZW50IHJld29yayBvZiB0aGUgeDg2IGltYWdlIGNyZWF0aW9uIHRoZSBm
MmZzL2V4dDQgYmFzZWQKPiBvdmVybGF5cyBkaXNzYXBwZWFyZWQgYXMgdGhlaXIgYXJlIG5vdCBj
b3BpZWQgYnkgZGVmYXVsdC4KPiAKPiBUaGlzIGNvbW1pdCBmb2xsb3dzIHRoZSBpbXBsZW1lbnRh
dGlvbiBvZiBtYWx0YSBhbmQgYXJtdmlydCB0byBjb3B5IHRoZQo+IG92ZXJsYXlzIGFzIHdlbGwu
Cj4gCj4gU2lnbmVkLW9mZi1ieTogUGF1bCBTcG9vcmVuIDxtYWlsQGFwYXJjYXIub3JnPgo+IC0t
LQo+ICB0YXJnZXQvbGludXgveDg2L2ltYWdlL01ha2VmaWxlIHwgMTAgKysrKysrKysrKwo+ICAx
IGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS90YXJnZXQv
bGludXgveDg2L2ltYWdlL01ha2VmaWxlIGIvdGFyZ2V0L2xpbnV4L3g4Ni9pbWFnZS9NYWtlZmls
ZQo+IGluZGV4IGMyOTYxZTViOWMuLjgxYThmNzNlZmMgMTAwNjQ0Cj4gLS0tIGEvdGFyZ2V0L2xp
bnV4L3g4Ni9pbWFnZS9NYWtlZmlsZQo+ICsrKyBiL3RhcmdldC9saW51eC94ODYvaW1hZ2UvTWFr
ZWZpbGUKPiBAQCAtMTE4LDYgKzExOCwxMCBAQCBkZWZpbmUgRGV2aWNlL0RlZmF1bHQKPiAgICBl
bmRpZgo+ICBlbmRlZgo+ICAKPiArZGVmaW5lIEltYWdlL0J1aWxkL2d6aXAKPiArCWd6aXAgLWY5
biAkKEJJTl9ESVIpLyQoSU1HX1JPT1RGUyktJCgxKS5pbWcKPiArZW5kZWYKPiArCj4gICQoZXZh
bCAkKGNhbGwgSW1hZ2UvZ3ppcC1leHQ0LXBhZGRlZC1zcXVhc2hmcykpCj4gIAo+ICBpZmVxICgk
KFNVQlRBUkdFVCksNjQpCj4gQEAgLTEzNiw1ICsxNDAsMTEgQEAgaWZlcSAoJChTVUJUQVJHRVQp
LGxlZ2FjeSkKPiAgICBpbmNsdWRlIGxlZ2FjeS5tawo+ICBlbmRpZgo+ICAKPiArZGVmaW5lIElt
YWdlL0J1aWxkCj4gKwkkKGNhbGwgSW1hZ2UvQnVpbGQvJCgxKSkKPiArCSQoQ1ApICQoS0RJUikv
cm9vdC4kKDEpICQoQklOX0RJUikvJChJTUdfUk9PVEZTKS0kKDEpLmltZwo+ICsJJChjYWxsIElt
YWdlL0J1aWxkL2d6aXAvJCgxKSkKPiArZW5kZWYKPiArCj4gICQoZXZhbCAkKGNhbGwgQnVpbGRJ
bWFnZSkpCj4gIAoKVG8gYmUgaW4gbGluZSB3aXRoIGN1cnJlbnQgaW1hZ2UgZ2VuZXJhdGlvbiwg
SSB0aGluayB0aGlzIHdvdWxkIGxvb2sgYmV0dGVyOgoKLS0tIGEvdGFyZ2V0L2xpbnV4L3g4Ni9p
bWFnZS9NYWtlZmlsZQorKysgYi90YXJnZXQvbGludXgveDg2L2ltYWdlL01ha2VmaWxlCkBAIC05
OSwxMCArOTksMTIgQEAgZGVmaW5lIERldmljZS9EZWZhdWx0CiAgIElNQUdFL2NvbWJpbmVkLmlt
Zy5neiA6PSBhcHBlbmQtcm9vdGZzIHwgcGFkLWV4dHJhIDEyOGsgfCBncnViLWNvbmZpZyBwYyB8
IGNvbWJpbmVkIHwgZ3J1Yi1pbnN0YWxsIHwgZ3ppcAogICBJTUFHRS9jb21iaW5lZC52ZGkgOj0g
YXBwZW5kLXJvb3RmcyB8IHBhZC1leHRyYSAxMjhrIHwgZ3J1Yi1jb25maWcgcGMgfCBjb21iaW5l
ZCB8IGdydWItaW5zdGFsbCB8IHFlbXUtaW1hZ2UgdmRpCiAgIElNQUdFL2NvbWJpbmVkLnZtZGsg
Oj0gYXBwZW5kLXJvb3RmcyB8IHBhZC1leHRyYSAxMjhrIHwgZ3J1Yi1jb25maWcgcGMgfCBjb21i
aW5lZCB8IGdydWItaW5zdGFsbCB8IHFlbXUtaW1hZ2Ugdm1kaworICBJTUFHRS9yb290ZnMuaW1n
IDo9IGFwcGVuZC1yb290ZnMKKyAgSU1BR0Uvcm9vdGZzLmltZy5neiA6PSBhcHBlbmQtcm9vdGZz
CiAgIGlmZXEgKCQoQ09ORklHX1RBUkdFVF9JTUFHRVNfR1pJUCkseSkKLSAgICBJTUFHRVMgOj0g
Y29tYmluZWQuaW1nLmd6CisgICAgSU1BR0VTIDo9IGNvbWJpbmVkLmltZy5neiByb290ZnMuaW1n
Lmd6CiAgIGVsc2UKLSAgICBJTUFHRVMgOj0gY29tYmluZWQuaW1nCisgICAgSU1BR0VTIDo9IGNv
bWJpbmVkLmltZyByb290ZnMuaW1nCiAgIGVuZGlmCiAgIEtFUk5FTCA6PSBrZXJuZWwtYmluCiAg
IEtFUk5FTF9JTlNUQUxMIDo9IDEKCi0tIApUTU4KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQt
ZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
