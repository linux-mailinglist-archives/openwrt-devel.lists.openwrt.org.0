Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 671541C38F4
	for <lists+openwrt-devel@lfdr.de>; Mon,  4 May 2020 14:11:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=prVNSXvg1+S5SSkuMDqBX1PYCXfPnTeuiLFrLTGUcAQ=; b=XcJMx6YBzQ46AEZWZpoTCM29r
	TwHY7eIQ2TwuILyKYSzuTs9rbTWnrJ3wlzKwf+t766YbMhV2XlQFsuFTb6ZfjjzDrwInLF/wIkRue
	MmmCtZr94eupNO4EXTHznt0PV8fw3ksQ8uNs67XEvLyjpZOKzBq7FtNG+317iEIqqU7L+//0aKdvK
	7D+ny7MNhzcObCH7wYKXo0Xv9VIk1/XGAqPHSfVnC0bYbIywAaqXHwM0hH5e5Du/tDB4BeeO+JD4c
	mehBFiEx21rDx4N9eWqlDdxVvzOlt2U6PNYYT0gSm6P7r1+hojAMMm7qgpyl8n6XRYziHDCc0zxV7
	zXmQtWh/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVZwZ-0006h1-0A; Mon, 04 May 2020 12:11:31 +0000
Received: from 20.mo1.mail-out.ovh.net ([188.165.45.168])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVZwS-0006gB-Cj
 for openwrt-devel@lists.openwrt.org; Mon, 04 May 2020 12:11:26 +0000
Received: from player771.ha.ovh.net (unknown [10.110.208.22])
 by mo1.mail-out.ovh.net (Postfix) with ESMTP id D25671BE3FB
 for <openwrt-devel@lists.openwrt.org>; Mon,  4 May 2020 14:11:16 +0200 (CEST)
Received: from milecki.pl (ip-194-187-74-233.konfederacka.maverick.com.pl
 [194.187.74.233]) (Authenticated sender: rafal@milecki.pl)
 by player771.ha.ovh.net (Postfix) with ESMTPSA id 7C9BE12149901;
 Mon,  4 May 2020 12:11:11 +0000 (UTC)
To: Vivek Unune <npcomplete13@gmail.com>, openwrt-devel@lists.openwrt.org
References: <CAChtp76S+dj9MHkgFn2xWg84NSoSW4OUZHX4B1EEm2_M9C2epQ@mail.gmail.com>
 <CAChtp7578QXX8Auf6Ga=rKzW+4AqiK=5f5Yxadpq714ho2OxCw@mail.gmail.com>
 <CAChtp76jcHv+HQT_K31KSUiT=63K8VV+ZErq7deakB4SGbX=Sg@mail.gmail.com>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Message-ID: <2ceb73fc-dd7a-9e68-9a12-f4d8ade898e8@milecki.pl>
Date: Mon, 4 May 2020 14:11:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAChtp76jcHv+HQT_K31KSUiT=63K8VV+ZErq7deakB4SGbX=Sg@mail.gmail.com>
Content-Language: en-US
X-Ovh-Tracer-Id: 459367164530036462
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduhedrjeeggdeggecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepuffvfhfhkffffgggjggtgfesthekredttdefjeenucfhrhhomheptfgrfhgrlhcuofhilhgvtghkihcuoehrrghfrghlsehmihhlvggtkhhirdhplheqnecuggftrfgrthhtvghrnhepieegtdevhfdttefgtedtjeegveegudeuteffvefhgfduheejgfetudfgvedvheehnecuffhomhgrihhnpehgihhthhhusgdrtghomhdpkhgvrhhnvghlrdhorhhgnecukfhppedtrddtrddtrddtpdduleegrddukeejrdejgedrvdeffeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejjedurdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheprhgrfhgrlhesmhhilhgvtghkihdrphhlpdhrtghpthhtohepohhpvghnfihrthdquggvvhgvlheslhhishhtshdrohhpvghnfihrthdrohhrgh
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_051124_578498_EBDC2C09 
X-CRM114-Status: GOOD (  14.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [188.165.45.168 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [188.165.45.168 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: Re: [OpenWrt-Devel] [bcm53xx] Pin Controller in Northstar
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

SGkgVml2ZWsgJiBzb3JyeSBmb3IgbGF0ZSByZXBseS4KCkl0IHRvb2sgbWUgZmV3IGhvdXJzIHRv
IGV2YWx1YXRlIGN1cnJlbnQgRE1VIC8gQ1JVIC8gcGluY3RybCBzaXR1YXRpb24uCgpPbiAwMy4w
NS4yMDIwIDIyOjE1LCBWaXZlayBVbnVuZSB3cm90ZToKPiBPbiBTdW4sIEFwciA1LCAyMDIwIGF0
IDEwOjQ4IEFNIFZpdmVrIFVudW5lIDxucGNvbXBsZXRlMTNAZ21haWwuY29tPiB3cm90ZToKPj4K
Pj4gT24gVHVlLCBNYXIgMzEsIDIwMjAgYXQgNTo1MSBQTSBWaXZlayBVbnVuZSA8bnBjb21wbGV0
ZTEzQGdtYWlsLmNvbT4gd3JvdGU6Cj4+Pgo+Pj4gSGkgQWxsIC8gUmFmYcWCLAo+Pj4KPj4+IEkn
bSBhYm91dCB0byB1cGRhdGUgZGV2aWNlIHRyZWUgZm9yIExpbmtzeXMgUGFuYW1lcmEgcm91dGVy
IChha2EKPj4+IEVBOTUwMCkgc28gdGhhdCBpdCB1c2VzIHBpbiBjb250cm9sbGVyIGRlZmluZWQg
aW4gQkNNNTMwMVguZHRzaSBbMV0uCj4+PiBIb3dldmVyLCB0aGUgbWFpbmxpbmUga2VybmVsJ3Mg
Tm9ydGhzdGFyIHBpbmN0cmwgZHJpdmVyIGNvZGUKPj4+IChucy1waW5jdHJsLmNzIFsyXSkgaXMg
b3V0IG9mIHN5bmMgd2l0aCB0aGUgZGV2aWNlIHRyZWUuIEFzIHlvdSBzZWUsCj4+PiB0aGUgZHJp
dmVyIGxvb2tzIGZvciBzeXNjb24gbm9kZSB3aGljaCBpcyBhYnNlbnQgaW4gdGhlIGRldmljZSB0
cmVlLgo+Pj4KPj4+IFdhcyB0aGVyZSBhIHBhdGNoIHN1Ym1pdHRlZCB0byB1cGRhdGUgdGhlIGRl
dmljZSB0cmVlIGFsb25nIHdpdGggdGhlCj4+PiBkcml2ZXI/IEkgY291bGQgb25seSBmaW5kIHRo
ZSBwYXRjaCB3cnQgdGhlIGRyaXZlciBbM10KPj4+Cj4+PiBJZiB0aGUgZGV2aWNlIHRyZWUgd2Fz
IGluZGVlZCB1cGRhdGVkLCB3aGljaCBnaXQgcmVwb3NpdG9yeSBzaG91bGQgSQo+Pj4gdXNlIHRv
IHByZXBhcmUgYW5kIHRlc3QgbXkgcGF0Y2g/CgpUaGF0IG1pc21hdGNoIGlzIGNhdXNlZCBieSBh
IGZhaWxlZCBjbGVhbnVwIGFjdGlvbiBmb3IgRE1VIC8gQ1JVLiBJCmRlY2lkZWQgdG8gcmVmYWN0
b3IgdGhvc2UgYmluZGluZ3MsIHNvbWUgY2hhbmdlcyB3ZXJlIGFjY2VwdGVkIGFuZCBzb21lCndl
cmUgcmVqZWN0ZWQgYXMgUm9iIGZvdW5kIHNvbWUgaXNzdWVzIGluIG15IHN1Ym1pdHRlZCB3b3Jr
LgoKSXQgcmVzdWx0cyBpbiBhIHNsaWdodGx5IG1lc3N5IHNpdHVhdGlvbiB0aGF0IG5lZWRzIHNv
cnRpbmcgb3V0IHByb3Blcmx5CndpdGggYWxsIG5vZGVzIGNvbnNpZGVyZWQuIEknbGwgd3JpdGUg
ZS1tYWlsIHRvIGRldmljZXRyZWVAIHNob3J0bHkuCgoKPj4+IFRoYW5rcywKPj4+Cj4+PiBWaXZl
awo+Pj4KPj4+IFsxXSBodHRwczovL2dpdGh1Yi5jb20vdG9ydmFsZHMvbGludXgvYmxvYi9tYXN0
ZXIvYXJjaC9hcm0vYm9vdC9kdHMvYmNtNTMwMXguZHRzaQo+Pj4gWzJdIGh0dHBzOi8vZ2l0aHVi
LmNvbS90b3J2YWxkcy9saW51eC9ibG9iL21hc3Rlci9kcml2ZXJzL3BpbmN0cmwvYmNtL3BpbmN0
cmwtbnMuYwo+Pj4gWzNdIGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gvMTA3MzU5
MzMvCj4+Cj4+IEFkZGluZyBSYWZhxYIKPj4KPj4gU28gSSd2ZSBtYW5hZ2VkIHRvIGNvbXBpbGUg
YW5kIGhhdmUgdGhlIHBpbmNvbnRyb2wgd29ya2luZyBpbiBPcGVuV3J0Lgo+PiBIb3dldmVyLCBp
biBvcmRlciB0byBzdWJtaXQgbXkgcGF0Y2ggdXBzdHJlYW0gSSB3aWxsIG5lZWQgY29ycmVjdCB0
cmVlCj4+IHRvIGNyZWF0ZSBteSBwYXRjaC4KPj4KPj4gUmFmYcWCIC0gY2FuIHlvdSBwb2ludCBt
ZSBpbiB0aGUgcmlnaHQgZGlyZWN0aW9uPwo+Pgo+PiBUaGFua3MsCj4+Cj4+IFZpdmVrCj4gCj4g
QnVtcCAmIGNoYW5nZSBzdWJqZWN0LgoKRm9yIERUUyBjaGFuZ2VzIHlvdSBzaG91bGQgYnJhbmNo
IGRldmljZXRyZWUvbmV4dCBvZjoKaHR0cHM6Ly9naXRodWIuY29tL0Jyb2FkY29tL3N0YmxpbnV4
LmdpdAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3Bl
bndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpo
dHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
