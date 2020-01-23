Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8773B1470A2
	for <lists+openwrt-devel@lfdr.de>; Thu, 23 Jan 2020 19:19:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=41akPh4HFINzUgdtXLbhAO+oYMCfRThK00VUeAbXrlk=; b=pgEJUjc1f2YBLM
	6xg3YRjEFMOKam7JgQjYuzZPWIhK/SeEvxhUQY8QRH6Q4b7mrwBwIasPVlk3HrF1EbEbE3yy92spH
	fAjzB8qVUTC6/frGM6/LEjmyJetOyr4SSPsMY2fJzeVrXyKfOzs9NucPPT625LRkBGdeAv+/LbLYt
	pj07EM0igyZA+/pHAXHLcMOeOgu+adye5/j6ZGgi1STkkgHZ11/mv4EoO5hTFS+OgEq4gkEM8FSKW
	ncTUXTR2aNONXLixOEKSU7ED9BoGZCx1mAs2TI+V3nU7Fxa+agjDNro7qeig1+sa9CG8Mi4XdgRWC
	ftgQ4EdNquV7VjvaiP9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuh51-0005Us-Vn; Thu, 23 Jan 2020 18:19:47 +0000
Received: from web0119.zxcs.nl ([2a06:2ec0:1::119])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuh4u-0005US-Oj
 for openwrt-devel@lists.openwrt.org; Thu, 23 Jan 2020 18:19:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=oranjevos.nl; s=x; h=To:References:Message-Id:Content-Transfer-Encoding:Cc:
 Date:In-Reply-To:From:Subject:Mime-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4lQ0q+n1GJHZyjpOySzQwfaODUro+zpTEbX3lGlZTvs=; b=fpSxbwVdD2amCre+9X/vXv3Mei
 nv/ooWXbSvlcJx659GUBql6bb0y3N7tQ6yDvuyFP7bYCCNT0jFw5pSL+oWmNq3jCL1dbiY0tjuDC+
 MAgkQyx2tD5QEpR6dLKOHrt+JSDvuBrAgDNe4S8utwmGsGyKMCU2DdYZHmMgcvvKbz2z4qMxnfi1w
 0HqsuDvB8jEmh21bgwPaH/S+fEWT9cI3Zb2PO6ukryIR+opFcO6cIfUyW3ojQs2zzD+lsrRDPFo3E
 O33aDadrgbvQh0muOvcTCs7gTMx+iCEMJpO/HbrK7LcSaCf/J1WkqKkRUm/8L2ebu86IUquH1v8aw
 kUFrihJA==;
Received: from dhcp-077-248-110-239.chello.nl ([77.248.110.239]:54743
 helo=boekje.achterlaan)
 by web0119.zxcs.nl with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92.3) (envelope-from <por@oranjevos.nl>)
 id 1iuh4p-003cKo-38; Thu, 23 Jan 2020 19:19:35 +0100
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
From: Paul Oranje <por@oranjevos.nl>
In-Reply-To: <22C27636-630D-4DB5-93CC-080DBF94AA1C@true.cz>
Date: Thu, 23 Jan 2020 19:19:33 +0100
Message-Id: <28A63C59-B4C7-4477-8A18-35F81A206C41@oranjevos.nl>
References: <20200121083509.24067-1-ynezz@true.cz>
 <20200121083509.24067-2-ynezz@true.cz>
 <A627DEFC-1F41-43D2-B93F-8B0EB917303B@oranjevos.nl>
 <20200123092801.GN69327@meh.true.cz>
 <063E38FB-4570-4A96-9D18-8FAC67613A67@oranjevos.nl>
 <22C27636-630D-4DB5-93CC-080DBF94AA1C@true.cz>
To: =?utf-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-Mailer: Apple Mail (2.3608.40.2.2.4)
X-Authenticated-Id: paul@oranjevos.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_101941_091326_CD5DFD6C 
X-CRM114-Status: UNSURE (   5.63  )
X-CRM114-Notice: Please train this message.
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

T3AgMjMgamFuLiAyMDIwLCBvbSAxNTo1OCBoZWVmdCBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVl
LmN6PiBoZXQgdm9sZ2VuZGUgZ2VzY2hyZXZlbjoKPiAKPiBPbiBKYW51YXJ5IDIzLCAyMDIwIDE6
MDQ6MTYgUE0gVVRDLCBQYXVsIE9yYW5qZSA8cG9yQG9yYW5qZXZvcy5ubD4gd3JvdGU6Cj4gCj4+
IFN1Z2dlc3Rpb246IGxvZyBvZiB0aGlzIHVuZXhwZWN0ZWQgY29uZGl0aW9uIG9yIGV2ZW4gc3Ry
b25nZXIsIGFuCj4+IGFzc2VydCgpLgo+IAo+IEFsbCBsb2dnaW5nIGlzIGtpbGxlZCBhbHJlYWR5
LCBsb2dnaW5nIGp1c3QgdG8gc2VyaWFsIGNvbnNvbGUgd29uJ3QgY3V0IGl0LCBhc3NlcnQgaXMg
b3ZlcmtpbGwsIHdoaWNoIG5lZWRzIGNvbXBpbGVyIGZsYWdzL2lmZGVmIGZpZGRsaW5nIGFuZCB3
aG8ga25vd3MgaG93IHRoYXQgd291bGQgYmVoYXZlIGluIGRpZmZlcmVudCBlbnZpcm9ubWVudHMu
Ck9rYXksIGRpZCBub3QgdGhpbmsgYWJvdXQgdGhlIGltcGFjdCBvZiB0aGlzIHN0ZGNsaWIgY2Fs
bC4KCj4gSSBjb3VsZCBzcGxpdCBpdCBpbnRvIHNlcGFyYXRlIGZ1bmN0aW9ucyBpZiB0aGF0IGlt
cGxpY2l0IHJldHVybiB3b3VsZCBiZSBtb3JlIGFjY2VwdGFibGUgZm9yIHlvdS4gSXQganVzdCBz
ZWVtcyBvdmVya2lsbCB0byBtZSwganVzdCB0byBtYWtlIGJvdGggb2YgdXMgc2F0aXNmaWVkIDot
KQpSaWdodCwgaXQncyBub3QgcmVhbGx5IHdvcnRoIHRoZSB0cm91YmxlLCBpdCdzIGp1c3Qga2lu
ZCBvZiBhZXN0aGV0aWMgdGhpbmcuCgo+IAo+PiBEZWNvcmF0aW5nIHBlcmZvcm1faGFsdCgpIHdp
dGggdGhlIF9Ob3JldHVybiBmdW5jdGlvbiBzcGVjaWZpZXIgbWlnaHQKPiAKPiBPaywgSSBsaWtl
IHRoaXMgb25lLgo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3Bl
bndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53
cnQtZGV2ZWwK
