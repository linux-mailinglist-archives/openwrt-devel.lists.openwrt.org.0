Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F71F1B0DF5
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 16:08:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VzPN2EHhLLkl5P1f1Ais/s8AH7eOJryo67IUlWzpxAU=; b=IORBIrhvIdf8/t
	O1vKS63PW9xuDaNoHeo50EqMgEYjTK32zwbHSvSbcy1fJmYdSKC9pxqCyZysndsgjcJYs/bgZRvMH
	8i58l/LQCnaoreMbAEzTRYnzsNg4oigp6kZaBNTX64mc7BX5Q7C4IypXdEDyPx9iUN3mlLHNqT4cE
	3mFEgtJpmUWzt9Pss1vW3Gpq/ym2SHz3lXgKb2u85cbe9ir4Rg1wK2k+7zJ0p9QPr8IHefEWv5RZP
	OtNpKE28AKnCFvQzv8TFgTMyzu5VhvbXWPypdN4SqkafIBm0v3C8IEcio90bufH+Q2fasi6wXtMtG
	hsYF5ndtbCXnaH9pD+2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQX62-0003HE-B5; Mon, 20 Apr 2020 14:08:26 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQX5t-0003Gl-CG
 for openwrt-devel@lists.openwrt.org; Mon, 20 Apr 2020 14:08:18 +0000
Received: from chuck.tardis.lan (tardis.herebedragons.eu [171.22.3.161])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPSA id E437E600C0;
 Mon, 20 Apr 2020 16:08:15 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org E437E600C0
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1587391696; bh=YuPjI+C0MbZvwxrqiCz0GNCX4RV54Iqf9RdPKiNubd8=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=p8jnOjneil26j/gxSSzpUpBdPZRA+PY22MiM2k7xoo3Tq4MxpSsHMKTHcjQ/RLJSO
 2u1d+adeRALemtsktwnZ80zxcyo4Lp+IPHmxo3p/+f3D4pFEbE8ydSG2Flvp5k84Ky
 XgjqCvqff2Hs7imdW280/jYFno8Af84cTJHZvcqY=
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.14\))
From: Thibaut <hacks@slashdirt.org>
In-Reply-To: <016101d6171c$5b79a430$126cec90$@adrianschmutzler.de>
Date: Mon, 20 Apr 2020 16:08:15 +0200
Message-Id: <C338D42B-D9CD-4E16-B07D-AA5BAE9EC881@slashdirt.org>
References: <20200420133503.18700-1-hacks@slashdirt.org>
 <20200420133503.18700-9-hacks@slashdirt.org>
 <016101d6171c$5b79a430$126cec90$@adrianschmutzler.de>
To: mail@adrianschmutzler.de
X-Mailer: Apple Mail (2.3445.104.14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_070817_576662_705C8A99 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.4 NO_DNS_FOR_FROM        RBL: Envelope sender has no MX or A DNS records
 [listed in slashdirt.org.	IN	A]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH v2 08/14] ath79/mikrotik: use standard
 caldata functions
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 koen.vandeputte@ncentric.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGksCgo+IExlIDIwIGF2ci4gMjAyMCDDoCAxNjowMiwgPG1haWxAYWRyaWFuc2NobXV0emxlci5k
ZT4gPG1haWxAYWRyaWFuc2NobXV0emxlci5kZT4gYSDDqWNyaXQgOgo+IAo+IEhpLAo+IAo+PiAt
LS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+PiBGcm9tOiBvcGVud3J0LWRldmVsIFttYWlsdG86
b3BlbndydC1kZXZlbC1ib3VuY2VzQGxpc3RzLm9wZW53cnQub3JnXQo+PiBPbiBCZWhhbGYgT2Yg
VGhpYmF1dCBWQVLDiE5FCj4+IFNlbnQ6IE1vbnRhZywgMjAuIEFwcmlsIDIwMjAgMTU6MzUKPj4g
VG86IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKPj4gQ2M6IFRoaWJhdXQgVkFSw4hO
RSA8aGFja3NAc2xhc2hkaXJ0Lm9yZz47IGtvZW4udmFuZGVwdXR0ZUBuY2VudHJpYy5jb20KPj4g
U3ViamVjdDogW09wZW5XcnQtRGV2ZWxdIFtQQVRDSCB2MiAwOC8xNF0gYXRoNzkvbWlrcm90aWs6
IHVzZSBzdGFuZGFyZAo+PiBjYWxkYXRhIGZ1bmN0aW9ucwo+PiAKPj4gV2l0aCB0aGUgaW1wbGVt
ZW50YXRpb24gb2YgYSBzeXNmcyBpbnRlcmZhY2UgdG8gYWNjZXNzIFdMQU4gZGF0YSwgdGhpcyB0
YXJnZXQKPj4gbm8gbG9uZ2VyIG5lZWRzIGEgc3BlY2lhbCB3cmFwcGVyIHRvIGV4dHJhY3QgY2Fs
ZGF0YS4KW+KApl0KCj4+IGtlcm5lbCBkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2F0aDc5L21p
a3JvdGlrL2Jhc2UtCj4+IGZpbGVzL2V0Yy9ob3RwbHVnLmQvZmlybXdhcmUvMTAtYXRoOWstZWVw
cm9tCj4+IGIvdGFyZ2V0L2xpbnV4L2F0aDc5L21pa3JvdGlrL2Jhc2UtZmlsZXMvZXRjL2hvdHBs
dWcuZC9maXJtd2FyZS8xMC1hdGg5ay0KPj4gZWVwcm9tCj4+IGluZGV4IDg2OTk1ZGU4OTAuLmJl
MmY2YWVjNjkgMTAwNjQ0Cj4+IC0tLSBhL3RhcmdldC9saW51eC9hdGg3OS9taWtyb3Rpay9iYXNl
LWZpbGVzL2V0Yy9ob3RwbHVnLmQvZmlybXdhcmUvMTAtCj4+IGF0aDlrLWVlcHJvbQo+PiArKysg
Yi90YXJnZXQvbGludXgvYXRoNzkvbWlrcm90aWsvYmFzZS1maWxlcy9ldGMvaG90cGx1Zy5kL2Zp
cm13YXJlLzEwLWEKPj4gKysrIHRoOWstZWVwcm9tCj4+IEBAIC0zLDcgKzMsOSBAQAo+PiBbIC1l
IC9saWIvZmlybXdhcmUvJEZJUk1XQVJFIF0gJiYgZXhpdCAwCj4+IAo+PiAuIC9saWIvZnVuY3Rp
b25zL2NhbGRhdGEuc2gKPj4gLS4gL2xpYi9mdW5jdGlvbnMvbWlrcm90aWstY2FsZGF0YS5zaAo+
PiArCj4+ICt3bGFuX2RhdGE9Ii9zeXMvZmlybXdhcmUvbWlrcm90aWsvaGFyZF9jb25maWcvd2xh
bl9kYXRhIgo+PiArbWFjX2Jhc2U9Ii9zeXMvZmlybXdhcmUvbWlrcm90aWsvaGFyZF9jb25maWcv
bWFjX2Jhc2UiCj4gCj4gSSdkIHVzZSB0aGUgY2F0IGhlcmUgYWxyZWFkeSBhcyB3ZWxsLgo+IE5v
dGUgdGhhdCBpbiBjb250cmFzdCB0byB0aGUgMDJfbmV0d29yayBjYXNlIG1lbnRpb25lZCBlYXJs
aWVyLCB0aGlzIG9uZSBpcyBfcHVyZWx5XyBtYXR0ZXIgb2YgdGFzdGUsIGp1c3Qgd2FudGVkIHRv
IG1lbnRpb24gaXQuCj4gSWYgZG9uJ3QgbGlrZSBpdCwganVzdCBmb3JnZXQgYWJvdXQg4oCmCgpX
ZWxsIG9uIHRoZSBvbmUgaGFuZCB5b3UgY2Fu4oCZdCBkbwp3bGFuX2RhdGE9IiQoY2F0IC9zeXMv
ZmlybXdhcmUvbWlrcm90aWsvaGFyZF9jb25maWcvd2xhbl9kYXRhKSIsIAoKc28gcHJlc2VudGF0
aW9uLXdpc2UgaXQgbG9va3MgbmljZXIgKHRvIG15IGV5ZSkgYXMgaXQgaXMgbm93LCBidXQgb24g
dGhlIG90aGVyIGhhbmQgZm9yIHRoZSBzYWtlIG9mIGNvbnNpc3RlbmN5IHdpdGggMDJfbmV0d29y
aywgaXTigJlzIHByb2JhYmx5IGJldHRlciB0byBwdXQgdGhlIGNhdCBpbiB0aGUgbWFjX2Jhc2Ug
YXNzaWdubWVudCBhcyB3ZWxsCgpXaWxsIGZpeC4KClRoYW5rcyEKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QK
b3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3Jn
L21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
