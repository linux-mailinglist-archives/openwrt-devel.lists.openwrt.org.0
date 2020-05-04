Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46BC41C39BA
	for <lists+openwrt-devel@lfdr.de>; Mon,  4 May 2020 14:44:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=thmR5+n/VaEhe2IBxR+N3Gbe98lNYtePWWI0tsTJzL4=; b=m21ZyZ5hgINQIk
	qaq1ThNMjEVhd4zF+9B200VX9TMO/y70NtM4nrV4XKso3jdhDODI41/o7T06KEfKf7WTNcYSylMFV
	Lz7t4dNDMFePDutucspkOgYSmPVVEufQsZno1fZOT+clBXQBHBuN0MQq++PUlTc4mlcRk1D7l1hTf
	9kjloSvsu08byR+4RWtmOjOIPS5qGqMlCZ+9rW6CFYvnhciTUGAQPrkGo8Br2krqybmun232PYq7x
	tPycwdgaY4PkCi2Va/NglDUmxQr6WQHOSqJrFq8nq4Pn+zY0VD/nys8upgPeBkitDnOzG7qDlKQX0
	xhEPo4FPWrlca+Y+R6vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVaSc-0002x2-39; Mon, 04 May 2020 12:44:38 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVaSQ-0002sF-U5
 for openwrt-devel@lists.openwrt.org; Mon, 04 May 2020 12:44:28 +0000
Received: by mail-wr1-x443.google.com with SMTP id d15so20762399wrx.3
 for <openwrt-devel@lists.openwrt.org>; Mon, 04 May 2020 05:44:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=1qKtzkaeCcfOZ8fmCHLSdlY1uaAON94AAdiGfX3Bgf8=;
 b=RJY1vSouJQJvMX1ewW8lJ39QrxONeJwLjEe10rHdlFvdziMaTj0sjF5YOfE25ZVmoR
 +tzWjPlTDPkgnXyaoogzrje2zwRFFCoCpyMwx5LNSbkdsKGnmiVJe7MNQGKZZRit47oz
 ffEPPec1BX8+evclGf0RuY+fM5B4BVJ9LRRn47RsXXAvdFXBqxCpUGPmd4+uMGT7qYik
 dYRh8LgWdSujGwUdvAuojqklNJno5u8TD8i5cLeW0lzmsnoD40QKWvlCBFxEBIx2aVCl
 wg2ADAAxjBB4B4rkB5piUN0FS+7UEN34xYMjY7MuyXG/2GTsh8HAYct7GCGp6humDwHI
 n0DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=1qKtzkaeCcfOZ8fmCHLSdlY1uaAON94AAdiGfX3Bgf8=;
 b=UCKUZBaihaoiff3qsRx96Rtdus+V7wVqSXJ+08MIh7IDdz7XrU68zmFX1RKPjCndd8
 /RUT3qA2tDgWEETaAW5FCIqb1OMIPdzSvZZ4VSSyZEex7+WHU5IP2wWD3JM160dj4a03
 8Wsmoejuy/g6edI8MTXeMoQIM7pBgHEHwQ7GsvjzYoC4g6z2nhv0443DPjF1c/SsC5vf
 kFXxo2obVjtMnXkoTJRH/dVTXHyGWbHT5FIlMITr/T9cohWdLFChHTk1BI9x88s2iUeH
 k1uD5IKVegKBoPlaFiyeZl8QJ2k0tnpYXatgpWBG9GkwaRy1iV3ddwwsoK72rwnWkdpZ
 L57g==
X-Gm-Message-State: AGi0PuaCKW1D/MOZ1Xhs/h4o2aC54h+hDMn0Vm8g7oVVKsCRxWWFBabX
 Yy0l6MvxM5I5FtOcz8DmzszCBqlWzx8yffFycbA=
X-Google-Smtp-Source: APiQypIQY8DUwFyLW3Hu6wQFvXRMgV93JwLno7bzmDXNKlcChOpR+IZJpZRFOyAbWBQjlF7Sk1ncEuQYtezvU/31TOw=
X-Received: by 2002:a5d:414f:: with SMTP id c15mr10079519wrq.61.1588596263265; 
 Mon, 04 May 2020 05:44:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAChtp76S+dj9MHkgFn2xWg84NSoSW4OUZHX4B1EEm2_M9C2epQ@mail.gmail.com>
 <CAChtp7578QXX8Auf6Ga=rKzW+4AqiK=5f5Yxadpq714ho2OxCw@mail.gmail.com>
 <CAChtp76jcHv+HQT_K31KSUiT=63K8VV+ZErq7deakB4SGbX=Sg@mail.gmail.com>
 <2ceb73fc-dd7a-9e68-9a12-f4d8ade898e8@milecki.pl>
In-Reply-To: <2ceb73fc-dd7a-9e68-9a12-f4d8ade898e8@milecki.pl>
From: Vivek Unune <npcomplete13@gmail.com>
Date: Mon, 4 May 2020 08:44:12 -0400
Message-ID: <CAChtp766nPdF=fQHQOVSm3vD3u_hYrbq_=1WDNT6-Bcyn4Cavw@mail.gmail.com>
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_054427_018824_B87B58FB 
X-CRM114-Status: GOOD (  18.10  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [npcomplete13[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [npcomplete13[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gTW9uLCBNYXkgNCwgMjAyMCBhdCA4OjExIEFNIFJhZmHFgiBNacWCZWNraSA8cmFmYWxAbWls
ZWNraS5wbD4gd3JvdGU6Cj4KPiBIaSBWaXZlayAmIHNvcnJ5IGZvciBsYXRlIHJlcGx5Lgo+Cj4g
SXQgdG9vayBtZSBmZXcgaG91cnMgdG8gZXZhbHVhdGUgY3VycmVudCBETVUgLyBDUlUgLyBwaW5j
dHJsIHNpdHVhdGlvbi4KPgo+IE9uIDAzLjA1LjIwMjAgMjI6MTUsIFZpdmVrIFVudW5lIHdyb3Rl
Ogo+ID4gT24gU3VuLCBBcHIgNSwgMjAyMCBhdCAxMDo0OCBBTSBWaXZlayBVbnVuZSA8bnBjb21w
bGV0ZTEzQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPj4KPiA+PiBPbiBUdWUsIE1hciAzMSwgMjAyMCBh
dCA1OjUxIFBNIFZpdmVrIFVudW5lIDxucGNvbXBsZXRlMTNAZ21haWwuY29tPiB3cm90ZToKPiA+
Pj4KPiA+Pj4gSGkgQWxsIC8gUmFmYcWCLAo+ID4+Pgo+ID4+PiBJJ20gYWJvdXQgdG8gdXBkYXRl
IGRldmljZSB0cmVlIGZvciBMaW5rc3lzIFBhbmFtZXJhIHJvdXRlciAoYWthCj4gPj4+IEVBOTUw
MCkgc28gdGhhdCBpdCB1c2VzIHBpbiBjb250cm9sbGVyIGRlZmluZWQgaW4gQkNNNTMwMVguZHRz
aSBbMV0uCj4gPj4+IEhvd2V2ZXIsIHRoZSBtYWlubGluZSBrZXJuZWwncyBOb3J0aHN0YXIgcGlu
Y3RybCBkcml2ZXIgY29kZQo+ID4+PiAobnMtcGluY3RybC5jcyBbMl0pIGlzIG91dCBvZiBzeW5j
IHdpdGggdGhlIGRldmljZSB0cmVlLiBBcyB5b3Ugc2VlLAo+ID4+PiB0aGUgZHJpdmVyIGxvb2tz
IGZvciBzeXNjb24gbm9kZSB3aGljaCBpcyBhYnNlbnQgaW4gdGhlIGRldmljZSB0cmVlLgo+ID4+
Pgo+ID4+PiBXYXMgdGhlcmUgYSBwYXRjaCBzdWJtaXR0ZWQgdG8gdXBkYXRlIHRoZSBkZXZpY2Ug
dHJlZSBhbG9uZyB3aXRoIHRoZQo+ID4+PiBkcml2ZXI/IEkgY291bGQgb25seSBmaW5kIHRoZSBw
YXRjaCB3cnQgdGhlIGRyaXZlciBbM10KPiA+Pj4KPiA+Pj4gSWYgdGhlIGRldmljZSB0cmVlIHdh
cyBpbmRlZWQgdXBkYXRlZCwgd2hpY2ggZ2l0IHJlcG9zaXRvcnkgc2hvdWxkIEkKPiA+Pj4gdXNl
IHRvIHByZXBhcmUgYW5kIHRlc3QgbXkgcGF0Y2g/Cj4KPiBUaGF0IG1pc21hdGNoIGlzIGNhdXNl
ZCBieSBhIGZhaWxlZCBjbGVhbnVwIGFjdGlvbiBmb3IgRE1VIC8gQ1JVLiBJCj4gZGVjaWRlZCB0
byByZWZhY3RvciB0aG9zZSBiaW5kaW5ncywgc29tZSBjaGFuZ2VzIHdlcmUgYWNjZXB0ZWQgYW5k
IHNvbWUKPiB3ZXJlIHJlamVjdGVkIGFzIFJvYiBmb3VuZCBzb21lIGlzc3VlcyBpbiBteSBzdWJt
aXR0ZWQgd29yay4KPgo+IEl0IHJlc3VsdHMgaW4gYSBzbGlnaHRseSBtZXNzeSBzaXR1YXRpb24g
dGhhdCBuZWVkcyBzb3J0aW5nIG91dCBwcm9wZXJseQo+IHdpdGggYWxsIG5vZGVzIGNvbnNpZGVy
ZWQuIEknbGwgd3JpdGUgZS1tYWlsIHRvIGRldmljZXRyZWVAIHNob3J0bHkuCj4KPgo+ID4+PiBU
aGFua3MsCj4gPj4+Cj4gPj4+IFZpdmVrCj4gPj4+Cj4gPj4+IFsxXSBodHRwczovL2dpdGh1Yi5j
b20vdG9ydmFsZHMvbGludXgvYmxvYi9tYXN0ZXIvYXJjaC9hcm0vYm9vdC9kdHMvYmNtNTMwMXgu
ZHRzaQo+ID4+PiBbMl0gaHR0cHM6Ly9naXRodWIuY29tL3RvcnZhbGRzL2xpbnV4L2Jsb2IvbWFz
dGVyL2RyaXZlcnMvcGluY3RybC9iY20vcGluY3RybC1ucy5jCj4gPj4+IFszXSBodHRwczovL3Bh
dGNod29yay5rZXJuZWwub3JnL3BhdGNoLzEwNzM1OTMzLwo+ID4+Cj4gPj4gQWRkaW5nIFJhZmHF
ggo+ID4+Cj4gPj4gU28gSSd2ZSBtYW5hZ2VkIHRvIGNvbXBpbGUgYW5kIGhhdmUgdGhlIHBpbmNv
bnRyb2wgd29ya2luZyBpbiBPcGVuV3J0Lgo+ID4+IEhvd2V2ZXIsIGluIG9yZGVyIHRvIHN1Ym1p
dCBteSBwYXRjaCB1cHN0cmVhbSBJIHdpbGwgbmVlZCBjb3JyZWN0IHRyZWUKPiA+PiB0byBjcmVh
dGUgbXkgcGF0Y2guCj4gPj4KPiA+PiBSYWZhxYIgLSBjYW4geW91IHBvaW50IG1lIGluIHRoZSBy
aWdodCBkaXJlY3Rpb24/Cj4gPj4KPiA+PiBUaGFua3MsCj4gPj4KPiA+PiBWaXZlawo+ID4KPiA+
IEJ1bXAgJiBjaGFuZ2Ugc3ViamVjdC4KPgo+IEZvciBEVFMgY2hhbmdlcyB5b3Ugc2hvdWxkIGJy
YW5jaCBkZXZpY2V0cmVlL25leHQgb2Y6Cj4gaHR0cHM6Ly9naXRodWIuY29tL0Jyb2FkY29tL3N0
YmxpbnV4LmdpdAoKRXhjZWxsZW50ISBUaGFua3MhCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0
LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1h
bi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
