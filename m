Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F08D8003A
	for <lists+openwrt-devel@lfdr.de>; Fri,  2 Aug 2019 20:34:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fShPRNYvKdCrzckrOufbix8k4arfmerpiniufP+madk=; b=kyp1O0Cw/SWbwW
	3mXH3T9YIM0mfyvNlxelQ293qifCIQ7qbvVAiDsSSomzjevdWnlMGPX9P4cveSoaPzzDRbp8sJc9I
	2vzYKSAzGwuM2bX49tTa3OoMBJw9hKD+NeLOpno/M6RBImIeWRG+vY4OSEMeAJZWpEX8cYFY+zZG4
	UATd7R2ocBk2K/JzAVQE5D0YyTZRENauODl59wtsXLDPXjjAEBVgU45SzvH8Kwddvf7GMXWBEoUpM
	RVhuD9o0/ZPOH7UpCmUk4+pE0sOTpTLCePMZKSEuJGMcUaZnuoS+n2aYoJxg/OlL58B0ijauLOdu2
	aqEIGH18TEo1VAHQdcrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htcNN-0006EG-SD; Fri, 02 Aug 2019 18:34:01 +0000
Received: from achernar.uberspace.de ([95.143.172.237])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htcN5-0006Ds-6Y
 for openwrt-devel@lists.openwrt.org; Fri, 02 Aug 2019 18:33:46 +0000
Received: (qmail 21069 invoked from network); 2 Aug 2019 18:33:36 -0000
Received: from localhost (HELO ?192.168.1.133?) (127.0.0.1)
 by achernar.uberspace.de with SMTP; 2 Aug 2019 18:33:36 -0000
To: James Campbell <jscampbell.05@gmail.com>,
 Andreas Ziegler <ml@andreas-ziegler.de>
References: <CANoib0H81oGAEvhHbXLF2HBXnhUmZVcL8EZd4sKbvpwtLhvD_Q@mail.gmail.com>
 <20190730093705.GF74752@meh.true.cz>
 <CANoib0F=xguA9aAqO-AgAJ43YWWvAT36kBgsQRcTFNPGyvcP3g@mail.gmail.com>
 <2ae7cdad-254f-cb01-1474-8cbeff73638b@andreas-ziegler.de>
 <CACvU4CSKSNf-bT4HaQJrKSg99=EGbf7tHR-QSGrsPN1pwAheaA@mail.gmail.com>
From: Vincent Wiemann <vincent.wiemann@ironai.com>
Openpgp: preference=signencrypt
Autocrypt: addr=vincent.wiemann@ironai.com; prefer-encrypt=mutual; keydata=
 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
 sFWRrW2QGIhjT+Y4XMq8yZQ=
Message-ID: <3265ecb4-5a0b-d0e3-e7f7-c437b05354af@ironai.com>
Date: Fri, 2 Aug 2019 20:33:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CACvU4CSKSNf-bT4HaQJrKSg99=EGbf7tHR-QSGrsPN1pwAheaA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_113343_709164_18CA7DFD 
X-CRM114-Status: GOOD (  14.71  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [95.143.172.237 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Dmitry Tunin <hanipouspilot@gmail.com>,
 =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SSByZW1lbWJlciBpdCB3YXMgZGVjaWRlZCB0aGF0OgoxLiAxOS4wNyB3aWxsIGJlIHRoZSBsYXN0
IHJlbGVhc2Ugd2hlcmUgaW1hZ2UgZ2VuZXJhdGlvbiBpcyB0dXJuZWQgb24gZm9yIGFyNzF4eCAo
b2xkc3RhYmxlLXN0eWxlKS4KMi4gQmVjYXVzZSBvZiB0aGF0IG5vciBtb3JlIHB1bGwtcmVxdWVz
dHMgZm9yIGFyNzF4eCB3ZXJlIGFjY2VwdGVkIGJ1dCBmaXhlcy4KMy4gMTkuMDcgd2lsbCBiZSB0
aGUgbGFzdCByZWxlYXNlIHdoZXJlIGltYWdlIGdlbmVyYXRpb24gaXMgdHVybmVkIG9uIGZvciB0
aW55IGRldmljZXMKICAgYW5kIDMyIE1CIFJBTSBkZXZpY2VzLgo0LiBQdWxsLXJlcXVlc3RzIGZv
ciBUaW55IGF0aDc5IGRldmljZXMgd2lsbCBzdGlsbCBiZSBhY2NlcHRlZCBpZiB0aGV5J3JlIGNs
ZWFuLgo1LiBUaGVyZSB3aWxsIGJlIG5vIGtlcm5lbCB1cGRhdGVzIGZvciBhcjcxeHggKHdoaWNo
IHdhcyBsYXRlciB3aXRoZHJhd24pLCBiZWNhdXNlCiAgIHRoZSBuZXh0IHJlbGVhc2Ugc2hvdWxk
IGNvbnRhaW4gYXRoNzkgYW5kIHBlb3BsZSBzaG91bGQgYmUgZW1waGFzaXplZCB0byBwb3J0IHRo
ZW0gdG8gYXRoNzkKClNvIG5vdyB5b3UgaGF2ZSBlbXBoYXNpemVkIHBlb3BsZSB0byBwb3J0IGRl
dmljZXMgdG8gYXRoNzkgYW5kIHlvdSd2ZSBldmVuIHN0b3BwZWQgdGhlbSBmcm9tCndvcmtpbmcg
b24gYXI3MXh4IG1vcmUgdGhhbiBvbmNlIGFuZCBub3cgeW91IHdhbnQgdG8gcmVsZWFzZSB0aGUg
bmV4dCBzdGFibGUgdmVyc2lvbiBvbmx5IHdpdGggc29tZXRoaW5nCnRoYXQgbm9ib2R5IHdhcyBh
bGxvd2VkIHRvIGRvIG1haW50ZW5hbmNlIG9uL3doaWNoIGlzIGJhc2ljYWxseSAxOC4wNiB3aXRo
IGEgc2xpZ2h0bHkgbmV3ZXIga2VybmVsPwpUaGlzIGRvZXMgbm90IG1ha2Ugc2Vuc2UuIEZvciBt
b3N0IHBlb3BsZSBpdCB3YXMgY2xlYXIsIHRoYXQgMTkuMDcgd2lsbCBoYXZlIGltYWdlcyBmb3Ig
YXI3MXh4IGFuZCBhdGg3OS4KClJlZ2FyZHMsCgpWaW5jZW50IFdpZW1hbm4KCk9uIDMwLjA3LjE5
IDIxOjQwLCBKYW1lcyBDYW1wYmVsbCB3cm90ZToKPiBDYW4gd2Ugbm90IGhhdmUgYSB3YXkgb2Yg
aW5jbHVkaW5nIHVuc3RhYmxlIHN0dWZmIGluIGEgd2F5IHRoZSBjb25zdW1lcnMga25vdyBpdOKA
mXMgdW4gc3RhYmxlID8KPiAKPiBMaWtlIGEgMTkuMDcgY2FuYXJ5wqAKPiAKPiBPbiBUdWUsIDMw
IEp1bCAyMDE5IGF0IDIwOjIyLCBBbmRyZWFzIFppZWdsZXIgPG1sQGFuZHJlYXMtemllZ2xlci5k
ZSA8bWFpbHRvOm1sQGFuZHJlYXMtemllZ2xlci5kZT4+IHdyb3RlOgo+IAo+IAo+ICAgICBEbWl0
cnkgVHVuaW4gc2NocmllYiBhbSAzMC4wNy4xOSB1bSAxNDoyOToKPiAgICAgPiBBcmUgeW91IHRh
a2luZyBpbiBhY2NvdW50IHRoYXQgbWFueSBkZXZpY2VzIGFkZGVkIGR1cmluZyB0aGUgbGFzdCB5
ZWFyCj4gICAgID4gYXMgYXRoNzkgd29uJ3QgYmUgc3VwcG9ydGVkIGJ5IGEgc3RhYmxlIHJlbGVh
c2UuCj4gICAgID4gTWFzdGVyIGlzIG5vIGdvb2Qgbm93IGZvciBub3JtYWwgdXNlLiBUaGF0IHdp
bGwgbWVhbiB0aGF0IGZvciB0aGUgbmV4dAo+ICAgICA+IHllYXIgb3Igc28gbWFueSB1c2VycyB3
aWxsIHJlcXVpcmUgY3VzdG9tIDE5LjA3IGJ1aWxkcy4KPiAgICAgPiBUaGF0IGRvZXNuJ3Qgc291
bmQgdmVyeSBnb29kLgo+ICAgICA+Cj4gICAgID4gSW5pdGlhbGx5IGF0aDc5IHdhcyBleHBlY3Rl
ZCBpbiAxOS4wNywgYnV0IGl0IGFwcGVhcmVkIHRoYXQgbm90IGFsbAo+ICAgICA+IGRldmljZXMg
aGF2ZSBiZWVuIHBvcnRlZCBmcm9tIGFyNzF4eC4gU28gd2UgYXJlIG5vdCByZWFkeSB0byBkcm9w
Cj4gICAgID4gYXI3MXh4LCBidXQgd2UgYXJlIHJlYWR5IHRvIHN1cHBvcnQgYXRoNzkuCj4gCj4g
ICAgIHRvIG1lLCB0aGlzIGlzIHRoZSBvbmx5IGJpZyBuZWdhdGl2ZSB0aGluZyBoZXJlLgo+ICAg
ICBldmVyeW9uZSB3YXMgdG9sZCwgdGhhdCBuZXcgZGV2aWNlcyBoYXZlIHRvIGdvIGludG8gYXRo
NzkgLSBhbmQgbm93IHdlCj4gICAgIHdpbGwgaGF2ZSBhIG5ldyByZWxlYXNlLCBsYWNraW5nIGJp
bmFyaWVzIGZvciBtYW55IG1hbnkgbmV3IGRldmljZXMKPiAgICAgYmVjYXVzZSBuZXcgZGV2aWNl
IHN1cHBvcnQgaW4gYXI3MXh4IHdhcyBub3Qgd2VsY29tZS4KPiAKPiAgICAgX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiAgICAgb3BlbndydC1kZXZlbCBt
YWlsaW5nIGxpc3QKPiAgICAgb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZyA8bWFpbHRv
Om9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmc+Cj4gICAgIGh0dHBzOi8vbGlzdHMub3Bl
bndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCj4gCj4gCj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBvcGVud3J0LWRldmVsIG1h
aWxpbmcgbGlzdAo+IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKPiBodHRwczovL2xp
c3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo+IAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBt
YWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3Rz
Lm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
