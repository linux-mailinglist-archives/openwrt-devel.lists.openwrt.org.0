Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE06F21997
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 May 2019 16:09:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cmc3EVuv7Ke1MOhnzCPowPFPCljTNy2v6TJLDzsalUU=; b=QuXgIX3DYrirT/
	DTYCMrN+Oc6Kjdosue9O1eU97CfnwhyUG0KKH4asEG55FhAamYklWl70XbPZp4zdjWpftOL80TL52
	BtSVHLf4oHedJa6kREGxyBa3yVf9aFfreHcEAVpodGzWAKZaatXEBrx5yEpDHCAzrkd9mpjKzjjz/
	goKMwYSx4cWkDyNGjvd/jWG8FFPIgEULEoOxDmt88L+anD18uDQe3nTvp8iBIv+sxX29vC00nPwTP
	8fXGuW+PvWJbOFeeNfusCR2RCoTCYOsAQDeQnpDjIKbntclVDGmG9B2vZDdQZ8BXmmiUuew/pkjek
	dUrfv/O3gM8lLBER98hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRdXs-0002xQ-1Q; Fri, 17 May 2019 14:09:12 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRdXl-0002wh-Oy
 for openwrt-devel@bombadil.infradead.org; Fri, 17 May 2019 14:09:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yyRQKYPrtJsKJc9k5MC6cmW8TRhi2Pnf0EjwZIVsI1E=; b=2ySRACA/xbc8m7xiWXCZ5lawRO
 kH4lVfliBb/+G6+6baMZqGzOeWdWLnjQtVXhkk94r9c0BMWUy/lczcYQcoNQLCkvpYoRX897bb8r/
 o0B1NMAuzx9l8kFkhQAAVpVetPwok+Iccx8/TCJoLUQIOqyMm2JJJryNryy/6wbpYGCBX2OSEoNjC
 FHzdFJyt9RtSzq3frXfjotRNKHy9vlc4kRPBE44/gDbksw78U41Cb4W877/9BIEN5zr677Q74qp6s
 Wg7XDZWMEMAnZIqyMGOLBY6XuvYc6tyS8VAQ8w33aEZDn9Ku9BmxT1wt3j3M3/jh1RF2nIdfnz3Of
 SWaeehRg==;
Received: from mx-out.tlen.pl ([193.222.135.142])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRdXi-0001us-Kv
 for openwrt-devel@lists.openwrt.org; Fri, 17 May 2019 14:09:03 +0000
Received: (wp-smtpd smtp.tlen.pl 14268 invoked from network);
 17 May 2019 16:08:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1558102107; bh=yyRQKYPrtJsKJc9k5MC6cmW8TRhi2Pnf0EjwZIVsI1E=;
 h=Subject:To:Cc:From;
 b=rUVRuhlQgRKhOlmvP7t6GsVOk06CmVf/E7CaHiw3kjUAm1LdAyzMtvGSaoxuiv0PJ
 wcBCPTiWIscSTUyHzBcSQUJp1JE7jl7l3rR3JAS9A1CWl5hELXQaVXWlLVMXw9E56V
 CL92av4g6vJ6IBlUK6bgPi1j6J8v+3puPf+EofgQ=
Received: from 131.ip-164-132-48.eu (HELO [10.8.0.6])
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <sebastien.duponcheel@corp.ovh.com>; 17 May 2019 16:08:27 +0200
To: Marek Behun <marek.behun@nic.cz>
References: <20190516183828.15647-1-marek.behun@nic.cz>
 <47a9684d-50b0-90fe-55e4-4fd6061864d2@o2.pl> <20190516234157.68c7a78f@nic.cz>
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
Message-ID: <d24f7039-d62d-f42c-8889-25b514ed932a@o2.pl>
Date: Fri, 17 May 2019 16:08:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190516234157.68c7a78f@nic.cz>
Content-Language: en-US
X-WP-MailID: 862f76ad2eadd926f72e864c50f86c9b
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [8XNk]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_100902_968090_C30B7674 
X-CRM114-Status: GOOD (  16.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] mvebu: Add support for kernel 4.19
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: Stijn Tintel <stijn@linux-ipv6.be>, Jeremiah McConnell <miah@miah.com>,
 openwrt-devel@lists.openwrt.org, Marko Ratkaj <marko.ratkaj@sartura.hr>,
 Michael Gray <michael.gray@lantisproject.com>,
 =?UTF-8?Q?DUPONCHEEL_S=c3=a9bastien?= <sebastien.duponcheel@corp.ovh.com>,
 Hauke Mehrtens <hauke@hauke-m.de>,
 Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>,
 Ryan Mounce <ryan@mounce.com.au>, Russell King <rmk+kernel@armlinux.org.uk>,
 Rosen Penev <rosenp@gmail.com>, Stijn Segers <foss@volatilesystems.org>,
 Koen Vandeputte <koen.vandeputte@ncentric.com>,
 Jonas Gorski <jonas.gorski@gmail.com>, Imre Kaloz <kaloz@openwrt.org>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VyBkbml1IDE2LjA1LjIwMTkgb8KgMjM6NDEsIE1hcmVrIEJlaHVuIHBpc3plOgo+IE9uIFRodSwg
MTYgTWF5IDIwMTkgMjI6MzU6MzUgKzAyMDAKPiBUb21hc3ogTWFjaWVqIE5vd2FrIDx0b21la19u
QG8yLnBsPiB3cm90ZToKPiAKPj4gV2hhdCBJIHdvdWxkIGxpa2UgdG8gYXNrIGlzIGlmIFlvdSd2
ZSBoYWQgYWxzbyBsaW5rIHRyYWluaW5nIGlzc3VlcyB3aXRoIFBDSWUgcG9ydAo+PiBhbmQgcGFy
dGljdWxhciBBdGhlcm9zL1F1YWxjb21tIChBUjM4OTAsIFFDQTk4OTApIHdpZmkgY2FyZHMgb24g
VHVycmlzIE1PWD8gV2hpY2ggd2UKPj4gd29yayBhcm91bmQgd2l0aCB0aGVzZSBwYXRjaGVzOgo+
PiA1MjctUENJLWFhcmR2YXJrLWFsbG93LXRvLXNwZWNpZnktbGluay1jYXBhYmlsaXR5LnBhdGNo
Cj4+IDUyOC1hcm02NC1kdHMtYXJtYWRhLTM3MjAtZXNwcmVzc29iaW4tc2V0LW1heC1saW5rLXRv
LWdlLnBhdGNoCj4+IE9yIGRvIFlvdSB1c2UgZGlmZmVyZW50IGNoaXAgdmVuZG9ycz8KPiAKPiBI
aSBUb21hc3osCj4gCj4geWVzLCB0aGUgcHJvYmxlbWF0aWMgY2hpcHNldHMgYXJlIDk4ODAgYW5k
IDk4OTAuIEZvcmNpbmcgbGluayB0byBQQ0llCj4gMS4wIGRpZCBub3QgaGVscCBvbiBUdXJyaXMg
TW94Lgo+IEFmdGVyIHdlZWtzIG9mIHBsYXlpbmcgd2l0aCB0aGUgY2FyZCBJIGRpc2NvdmVyZWQg
dGhhdCBpdCBjb3VsZCBiZQo+IHNvbHZlZCBieSB0d2Vha2luZyB0aGUgbGVuZ3RoIG9mIHRoZSBQ
RVJTVCBzaWduYWwgKHJlc2V0LWdwaW9zKSBpbiB0aGUKPiBhYXJkdmFyayBkcml2ZXIuIFRoaXMg
aXMgaG93IEkgbWFkZSBpdCB3b3JrIG9uIDQuMTQgb24gVHVycmlzIE1veC4gT24KPiA0LjE5IGl0
IGlzIG5vdCBuZWVkZWQsIGJ1dCB3aXRoIHRoZSBuZXcgcGF0Y2hlcyBieSBNaXF1ZWwgUmF5bmFs
IHdoaWNoCj4gd2lsbCBiZSBpbiBrZXJuZWwgNS4yIG9yIDUuMyAoYWRkaW5nIHN1cHBvcnQgZm9y
IHN1c3BlbmQvcmVzdW1lKSB0aGlzCj4gYWdhaW4gYnJlYWtzLCBiZWNhdXNlIHRoZSBQRVJTVCBz
aWduYWwgaXMgbWFuaXB1bGF0ZWQgZGlmZmVyZW50bHkuIEkKPiBkaWQgbm90IHNvbHZlIHRoaXMg
aXNzdWUsIGJ1dCBJIHRoaW5rIGl0IHdpbGwgYWdhaW4gYmUgZG9uZSB2aWEgdGhlCj4gUEVSU1Qg
c2lnbmFsLgoKVGhhbmtzIGZvciB0aGUgZXhwbGFuYXRpb24sIG1pZ2h0IGdpdmUgYSBjbHVlIHdo
ZXJlIHRvIHBva2UgYXQgaWYgc2V0dGluZyBnZW4xIHdpbGwKbm90IHdvcmsgYW55bW9yZSwgYW5k
IGZvciBwb2ludGluZyB0byBNaXF1ZWwgUmF5bmFsIHBhdGNoZXMgKHNob3VsZCBoYXZlIHN1YnNj
cmliZWQKdmdlciksIHdpbGwgdGVzdCB0aGVtIGFmdGVyIHRoZXknbGwgYXBwZWFyIGluIG5leHQg
b3IgZWFybGllciBpZiB0aW1lIGFsbG93cy4KCj4gCj4gTWFyZWsKPiAKClJlZ2FyZHMKCi0tIApU
TU4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53
cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0
cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
