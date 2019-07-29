Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6832C7920E
	for <lists+openwrt-devel@lfdr.de>; Mon, 29 Jul 2019 19:26:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Cc:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=26b8IvuTW68SPiJG4PnxGhex+Asav/jQ2DSJ3G++67o=; b=nS6/7qTkm1fUnm
	qs56yb0lptKk7yQlSQoiRdUVUM8FMS+lLEBqfun3DTVPWsDJLxmoZvveVZi23wqcycIN1Aiqsivri
	078IzI27xGbE2JjAUvNFGxkuIW7vSyTqGmbuYiQltTdvQOSgKG34L+svKuGP1SvGPoCNYcrllqz79
	nrQCNfrDe91okSJbJcb600nICtGyr/8liJ0f1mcjbMUL0bQnIuSLYnVRIxwUI+1+GzzZuhSppvTUA
	n9WBNiVYfg7dPt+wjZEWtqVgdRveL6McITgTCSeIu9E6MuJYrQt/ZEcg4bk2CsAyLJxaQ6VN1dLtU
	tpqCw1ikFdEh+Wo6HpVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs9PL-0000jP-8d; Mon, 29 Jul 2019 17:25:59 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs9PB-0000j1-Hy
 for openwrt-devel@lists.openwrt.org; Mon, 29 Jul 2019 17:25:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1564421145;
 bh=4P9AZjODXcyobrL2PBpsVckBST5JUXZ0orDy5sGeQ8Y=;
 h=X-UI-Sender-Class:Date:From:To:Subject:References:In-Reply-To;
 b=SzaZgozKE9vz010w4aLkHZzCp+ThoKzWIQTbynpjhyye0Ibnr4c+8dPVGCyu4YORX
 HsU3bR1y7DihKofPnh0pc4C3ZQJ8Ii0Ws084EOPQYLlI7kj+XZ9/l14cjyQr27ULme
 J+PUGFap/VHeA4OS3I7b/FQ7b2+JG0pqTmQJsSHQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from darth.lan ([62.14.67.173]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MJmGZ-1i7Ku93TSb-00KBKI; Mon, 29
 Jul 2019 19:25:45 +0200
Date: Mon, 29 Jul 2019 19:25:43 +0200
From: Sebastian Kemper <sebastian_ml@gmx.net>
To: openwrt-devel@lists.openwrt.org, Dmitry Tunin <hanipouspilot@gmail.com>
Message-ID: <20190729172542.GA3072@darth.lan>
References: <CANoib0H81oGAEvhHbXLF2HBXnhUmZVcL8EZd4sKbvpwtLhvD_Q@mail.gmail.com>
 <CANoib0G+Oi38QN4UjwGxv0p1jm0vu-MZRbLtkoMi7Np9B6i95g@mail.gmail.com>
 <7F300030-BD32-4324-A454-AF3A12695B2A@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7F300030-BD32-4324-A454-AF3A12695B2A@gmx.net>
X-Provags-ID: V03:K1:dro43+SHpZMqKLczuJlfhyncXPFjotyxT3ubw6VpZkvRa8JjXhS
 KnLiYlgwyYXSvSC5aufOZGzSotF5oQVOfRwWcVqfjRcvru1beeOFINxN/M0tk0aRALTFgMu
 fG2VTAjJRZIYG8XRawjjyg8y8tnYRPjQvd9rW94t/q4hqG6PacvdRDdt12bnrdA+AQzOMIU
 a50+dkU3a8lcu+0Hw5Q6g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:UUHZn5HvPGg=:hqfq6ir3Dx/+0+bL8NoRmi
 ODVS+kIUBuSZkaaP2wV5YDFpZaj5GJamC8pF4obMuoYY6Pqn5vQnVE3M0dWt2yLvfguxG0ES6
 vl9MdaOHwpdzEM+TWXgN4o9ZtMIGseaL2NKxa4Rj0LY7kms9dw6jn62++lVvozjOYQ2tfCEBi
 VKum3AdK2juvUdH8kFB6Tzxu5Ki8uISg2ZebfUg2e45S6AMUsNByRTE+yjUtXyvrM5Wi8gHJk
 Tt3T7vK2NdUm0noOcr7FWGiJfOtpg0dzHk/HDOYD/aXVwwR1H60aAO9X/XxKwKgHtF7/xb/n+
 1RpyQbHq7XTj9XVfdjb54zLFowWHTVWGz2UMF3nwsQAz6Yk2poAo9QvPN6MSH4dNV67oX0Qvm
 9yatvvTDxfrBzh9jx8WC144Uuro6tzqEz8qZFoElv3pAq2mQjg9X2E6jooBA+eMx5uLq/jQLS
 xIHwS7rYi0ZUz+wu6Vv0HOKAj0DHEhE2/JEz7oEX7iczlyeHqtTKzkXUQYKKf4iYYxBCrFG8f
 gokLe4fBrRx/GQu+GsbQuhnkpliL7rjdfMfT9ZB1K8ZD4bHsIvQ1SDOIW+4rnpDl8ruQ8xOIq
 HS2xar8QsVPp+3npTZ6NWgBkyjfULUp101ETV9YkUWsOCGK250LgYKlIxFUzwH5IPiAGVnPUR
 gfpxO6SJPF3CUinylGK+KjNiWaF1QJRM10HHMU6glG+1MPea8MfEQni7G33NbxWqyagOkptZ5
 OKCny3c+Hc0kYzhunHRoHLBlzxEHMY7QQiozgvRDEJSlEwBjooGQzeieXpChWFNGJIxW5Y/tK
 MFhs57gtVhWqxZCcG7M6tlVNQraMiS+oMjXtA5/tlIr0iJSONi4x6f8cvYcbIQCVwaVqd23lb
 F3fWThpkHItp7UFshZECR72HudbxR1vSu5e2OjM2QkBTy4SJoxwmMLhGlksP4RNcrkq7oB+QN
 Q5W4oqu/k94WEQlnt3nAbbYZr8PtpRdtw/lyYLsY959zdIFPxgeGjokNNKY2tLZdkHkYAMQYa
 CdooyLzbUvwA4v3/0E3orB3fvpQok/ewqQhohzSCPFBzBT0dpa0wco4ckIgBT6kN7vjvAsTp6
 UwWzB7gc3W5Sh8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_102549_886286_00C199F3 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.18 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sebastian_ml[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] Why ath79 has been made source-only on 19.07?
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

T24gTW9uLCBKdWwgMjksIDIwMTkgYXQgMDU6MTQ6MDlQTSArMDAwMCwgU2ViYXN0aWFuIEtlbXBl
ciB3cm90ZToKPiBBbSBKdWx5IDI5LCAyMDE5IDQ6MzA6MzMgUE0gVVRDIHNjaHJpZWIgRG1pdHJ5
IFR1bmluCj4gPGhhbmlwb3VzcGlsb3RAZ21haWwuY29tPjoKPiA+VGhlcmUgaXMgYWxzbyBhIGZl
dyBkZXZpY2VzIHRoYXQgaGF2ZSBiZWVuIHJlY2VudGx5IGFkZGVkIGFzIGF0aDc5Cj4gPm9ubHku
IFNvIHRoZXkgd29uJ3QgYmUgc3VwcG9ydGVkLgo+ID4KPiA+0L/QvSwgMjkg0LjRjtC7LiAyMDE5
INCzLiDQsiAxOToyOCwgRG1pdHJ5IFR1bmluIDxoYW5pcG91c3BpbG90QGdtYWlsLmNvbT46Cj4g
Pj4KPiA+PiAyYjA3NDY1NGIwZjI1OTUxOGFhNTZlMDk3NWNhOGUyNmMwYzEyYmM5Cj4gPj4KPiA+
PiBJIHNlZSBubyByZWFzb24gd2h5IG5vdCB0byBidWlsZCBib3RoIGFyNzF4eCBhbmQgYXRoNzkg
Zm9yIGRldmljZXMKPiA+PiB0aGF0IGhhdmUgYmVlbiBwb3J0ZWQgdG8gYXRoNzkgYWxyZWFkeS4g
TWFueSBwZW9wbGUgYWxyZWFkeSB1c2UKPiA+PiAxOS4wNyBicmFuY2ggYW5kIHdhaXQgZm9yIHRo
ZSByZWxlYXNlLgo+ID4+Cj4gPj4gVGhhdCB3aWxsIHJlcXVpcmUgbG90cyBvZiBjdXN0b20gYnVp
bGRzLiBXaGF0IGlzIHRoZSBwb2ludCBvZgo+ID5leGNsdWRpbmcgYXRoNzk/Cj4KPiBHb29kIHBv
aW50cy4gSSdkIGxpa2UgdG8gc2VlIGF0aDc5IGJ1aWxkcyBmb3IgMTkuMDcgYXMgd2VsbC4gQW5k
IGV2ZW4KPiBpZiB0aGF0IG1lYW5zIG1vcmUgc3RyZXNzIG9uIHRoZSBidWlsZCBib3RzIGl0J2Qg
YmUgb25seSBldmVyeSBwb2ludAo+IHJlbGVhc2UsIG5vdCBjb25zdGFudGx5LiBBdCBsZWFzdCB0
aGF0J3MgbXkgdW5kZXJzdGFuZGluZy4KPgo+IEp1c3QgbXkgb3Bpbmlvbi4gSSBkb24ndCBoYXZl
IHZvdGluZyByaWdodHMgOi0pCj4KPiBLaW5kIHJlZ2FyZHMsCj4gU2ViCgpBbHNvIGhhdmluZyBh
dGg3OSBidWlsZHMgd291bGQgbGlrZWx5IHJlc3VsdCBpbiBzb21lIGFkZGl0aW9uYWwgZmVlZGJh
Y2sKKGFib3V0IHNvbWV0aGluZyB0aGF0IGRvZXNuJ3Qgd29yayBvbiBhdGg3OSBidXQgZG9lcyB3
b3JrIG9uIGFyNzF4eCkuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9w
ZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVu
d3J0LWRldmVsCg==
