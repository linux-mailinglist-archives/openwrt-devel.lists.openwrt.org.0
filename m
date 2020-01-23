Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40E881468A6
	for <lists+openwrt-devel@lfdr.de>; Thu, 23 Jan 2020 14:04:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jrAWm/LO06GG8abLNt330DGPTF4Mew6fxCR+Mwt6jfE=; b=QosnqGRY2HtZxt
	f/w2LgxR0U8Kel+6/y2/DCU0J8mNGpg+7JZphL5rH61UlKTVL2PcAeV76jZe0wtrY8nt3C/eSAZaQ
	4Ob2uRfHor5kldq2Gv0PuY9lQ1xTftryp+4NUa1X65Spb9T5i02Ybw+nNAdMdXQCVEuBh6NtzbKoR
	fDpuWiqxic/BrCBf980OzdbNE/e1IjfsWKy9TgzIerkjxTkQfr0Ysst/LlchFrjjl0qK6a87mVAzp
	JFrBiXw1h+TZ0yebscyC289tLYkRxZtTzEBFgtkoKGas03lI9bOBmfufypDImELp6iGzpRxNr+IBE
	ncLfNxavitsfBtg6qEFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iucA8-0007Nh-Ol; Thu, 23 Jan 2020 13:04:44 +0000
Received: from web0119.zxcs.nl ([2a06:2ec0:1::119])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuc9x-0007MQ-1j
 for openwrt-devel@lists.openwrt.org; Thu, 23 Jan 2020 13:04:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=oranjevos.nl; s=x; h=To:References:Message-Id:Content-Transfer-Encoding:Cc:
 Date:In-Reply-To:From:Subject:Mime-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lnikr8GGHjc/OcYs+1Sh4YUOLfOMJaDpCPoyG7FmB84=; b=BbqSCc5NtPVt97yD43Sx/owSZ/
 0pFBI8dItkumPF0z2glx72Q3UEeMG4d3vN6g2fFuBFm9jfeQ/k4i6cW1cb1mMZV7/qCEIa3Gh0Kbp
 2brAjULP4aeDJioPBLUl+p3BX3G2MK9YdISdlvV8tmLYA5h5UhVoZ6PIdwhs31Kq9/EE/W2XCR5q9
 DMQNRPrEmTGjQDPf1LRtG681VucUhr7Cf1XDCNJ060vSSVigZRCuIcbZtu+3CkzWYwedo3bq+IjxL
 t+y/6z6Trd3IPQHq5froMtTFCpAexigN8UeA/V0PQzdoOyhfsS+GwHNQZ2wPqkHB/YjVBmA4azb5/
 r7PrgU8g==;
Received: from dhcp-077-248-110-239.chello.nl ([77.248.110.239]:65091
 helo=boekje.achterlaan)
 by web0119.zxcs.nl with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92.3) (envelope-from <por@oranjevos.nl>)
 id 1iuc9v-002J9i-Ka; Thu, 23 Jan 2020 14:04:31 +0100
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
From: Paul Oranje <por@oranjevos.nl>
In-Reply-To: <20200123092801.GN69327@meh.true.cz>
Date: Thu, 23 Jan 2020 14:04:16 +0100
Message-Id: <063E38FB-4570-4A96-9D18-8FAC67613A67@oranjevos.nl>
References: <20200121083509.24067-1-ynezz@true.cz>
 <20200121083509.24067-2-ynezz@true.cz>
 <A627DEFC-1F41-43D2-B93F-8B0EB917303B@oranjevos.nl>
 <20200123092801.GN69327@meh.true.cz>
To: =?utf-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-Mailer: Apple Mail (2.3608.40.2.2.4)
X-Authenticated-Id: paul@oranjevos.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_050433_378946_EEBB6AC0 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH procd 2/2] state: fix reboot causing
 shutdown inside LXC container
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T3AgMjMgamFuLiAyMDIwLCBvbSAxMDoyOCBoZWVmdCBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVl
LmN6PiBoZXQgdm9sZ2VuZGUgZ2VzY2hyZXZlbjoKPiAKPiBQYXVsIE9yYW5qZSA8cG9yQG9yYW5q
ZXZvcy5ubD4gWzIwMjAtMDEtMjIgMTE6MDk6MjJdOgo+IAo+IEhpLAo+IAo+IHRoYW5rcyBmb3Ig
cmV2aWV3Lgo+IAo+Pj4gKwlpZiAoaXNfY29udGFpbmVyKCkpIHsKPj4+ICsJCXJlYm9vdChyZWJv
b3RfZXZlbnQpOwo+PiBXaGVuIHJlYm9vdCByZXR1cm5zLCBoYXNuJ3Qgc29tZXRoaW5nIGdvbmUg
d3JvbmcgdGhlbiA/Cj4gCj4gV2hhdCBkbyB5b3Ugc3VnZ2VzdD8KRmFsbGluZyB0aHJvdWdoIHRv
IGV4aXQoKSBzZWVtcyBhcmJpdHJhcnksIHRoZSByZXR1cm4gc3RhdGVtZW50IGFmdGVyIHRoYXQg
aXMgYSBkb3VibGUgd2hhbW15LgpTdWdnZXN0aW9uOiBsb2cgb2YgdGhpcyB1bmV4cGVjdGVkIGNv
bmRpdGlvbiBvciBldmVuIHN0cm9uZ2VyLCBhbiBhc3NlcnQoKS4KCj4gSSBkb250IGtub3cgaG93
IHRoYXQgYmVoYXZlcyBpbiBhbGwgZW52aXJvbm1lbnRzIGluIG9yZGVyIHRvIGFuc3dlciB0aGF0
Cj4gcXVlc3Rpb24gYW5kIEkndmUgZm9sbG93aW5nICJIb3dldmVyLCBpbiBjb250YWluZXJzIHJl
Ym9vdCgpIGNhbGwgaXMKPiBpZ25vcmVkIlsxXSBpbiBteSBoZWFkIHNpbmNlIEkndmUgZGlzY292
ZXJlZCBpdC4KQWgsIHNvIHRoZSBjb2RlIGJ1aWxkcyBvbiB0aGF0IGJ1c3lib3ggaW1wbGVtZW50
YXRpb24uIEFuIGFzc2VydCgpIHdvdWxkIGtpbGwgCgo+Pj4gKwkJZXhpdChFWElUX1NVQ0NFU1Mp
Owo+PiBUaGUgcmV0dXJuIGJlbG93IGFmdGVyIGV4aXQoKSBjYW4gbmV2ZXIgYmUgcmVhY2hlZC4K
PiAKPiBXaGF0IGRvIHlvdSBzdWdnZXN0PyAKU3VnZ2VzdGlvbjogcmVtb3ZlIHRoZSBzdXBlcmZs
dW91cyByZXR1cm4gc3RhdGVtZW50IG9yIHJlcGxhY2UgaXQgd2l0aCBhIGNvbW1lbnQgbGlrZSAv
KiBORVZFUiBSRUFDSEVEICovLgpEZWNvcmF0aW5nIHBlcmZvcm1faGFsdCgpIHdpdGggdGhlIF9O
b3JldHVybiBmdW5jdGlvbiBzcGVjaWZpZXIgbWlnaHQgYmUgYW4gaWRlYSBhcyBpdCBhbGxvd3Mg
dGhlIGNvbXBpbGVyIHRvIHdhcm4gd2hlbiB0aGUgZnVuY3Rpb24gd291bGQgcG9zc2libHkgcmV0
dXJuIChhcyBvZiAiYzExIDYuNy40IEZ1bmN0aW9uIHNwZWNpZmllcnMiLCBvciBpcyBhbiBvbGRl
ciB2ZXJzaW9uIG9mIHRoZSBDIHN0YW5kYXJkIHRvIGJlIHVzZWQgPykuCgo+IERvZXMgdGhhdCBh
ZGRpdGlvbmFsIHJldHVybiBodXJ0cyB0aGF0IG11Y2g/IEkgbWVhbiwgaWYgd2Uga2VlcCBpdCwg
aXQncwo+IGNsZWFyLCB0aGF0IHRoZSBjb2RlIGJlbGxvdyB0aGUgcmV0dXJuIGNhbnQgYmUgZXZl
ciByZWFjaGVkLCBvbWl0dGluZyBpdAo+IGxlYXZlcyBzb21lIHBvc3NpYmlsaXR5LiBEZWJ1Z2dp
bmcgdGhpcyBzdHVmZiBpcyBQSVRBLiAKT2YgY29hcnNlIGl0IGRvZXMgbm90IHJlYWxseSBodXJ0
LCBpdCdzIGEgYml0IGxpa2UgYW4gaWYgdGhhdCBhbHdheXMgcmV0dXJucyB3aXRoIGFuIGVsc2Ug
Y2xhdXNlLCBpbiB0aGF0IGl0IGlzIG1lYW5pbmdsZXNzLgpCZXNpZGVzLCB3aGVuIGNvZGUgY292
ZXJhZ2UgYW5hbHlzaXMgaXMgdXNlZCwgdGhlc2Ugd29uJ3QgZGlydHkgdGhlIGFuYWx5c2lzLgoK
PiAKPiAxLiBodHRwczovL2dpdC5idXN5Ym94Lm5ldC9idXN5Ym94L3RyZWUvaW5pdC9pbml0LmMj
bjc1MAoKCkJ5ZSwKUGF1bApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9w
ZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVu
d3J0LWRldmVsCg==
