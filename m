Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D99867813C
	for <lists+openwrt-devel@lfdr.de>; Sun, 28 Jul 2019 21:38:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HKX9OH/0yb49dmL+Qtrt1mCtVpoI5npukI13jW/U8k0=; b=sXnmcZbFcbL4CP
	mNqWjeQ0qxMrPfzHxwOI7Qrk+n6CDMNTvio2nfcUEjuMcjwNQaQyRCa85BhTOCtiskkFqH7sOoW7W
	+iEQmgZlGSWjTVuWPqaU9kHWyVWIiPlspTk7ysJ9NlGepeAD9buvD+w7NgyAFjfYOUXPpw14JiRoJ
	uzUEkZOFsMWLwwwJpTEHku6/vshjF3nov+Qr6Gwbr5Yr53AdM5tTiZxJ0CsAFDbv014Lyh5yW+RvG
	GPrVHQksf33WwbdjDKd8II44FyCq/xeBaxRP8nQSR4iICDLCsK0VGjIJvlwSCaucDVmu7NIuRNtSm
	YNSDPXsuinT8fxMwt3tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrozo-0005QK-Tg; Sun, 28 Jul 2019 19:38:17 +0000
Received: from mail.tintel.eu ([54.36.12.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrozd-0005PN-EC
 for openwrt-devel@lists.openwrt.org; Sun, 28 Jul 2019 19:38:07 +0000
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id B88C2445C7FF
 for <openwrt-devel@lists.openwrt.org>; Sun, 28 Jul 2019 21:38:02 +0200 (CEST)
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10032)
 with ESMTP id 9m87FosnpySX for <openwrt-devel@lists.openwrt.org>;
 Sun, 28 Jul 2019 21:38:01 +0200 (CEST)
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id 4CF4F445AB7E
 for <openwrt-devel@lists.openwrt.org>; Sun, 28 Jul 2019 21:38:01 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.tintel.eu 4CF4F445AB7E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux-ipv6.be;
 s=502B7754-045F-11E5-BBC5-64595FD46BE8; t=1564342681;
 bh=X90sSm2oS1CmqvJ7hICaKMZMECj+7BW+DMNPCC2KS5w=;
 h=To:From:Message-ID:Date:MIME-Version;
 b=cYRomiu1JLWLYRTugZCK7ed3I8ZuGx1ZKkkuDryWKKsYUSKTbpplyV0w8O0i37gh7
 Bq9sjs5NraVWUMs6Gx282tc6A+s8QBpbxPAFJRL9rVCqQVDZa8L08MTG6ZxSLdySl+
 jz8oTocu2mOebr8QJXWwIWKqcBvhtZ/Mrbvhz1EI=
X-Virus-Scanned: amavisd-new at mail.tintel.eu
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10026)
 with ESMTP id qGIZI8nsdI6N for <openwrt-devel@lists.openwrt.org>;
 Sun, 28 Jul 2019 21:38:01 +0200 (CEST)
Received: from [192.168.54.10] (ar0.sof.bg.adlevio.net [87.227.188.250])
 (Authenticated sender: stijn@tintel.eu)
 by mail.tintel.eu (Postfix) with ESMTPSA id DCDAB4451E5B
 for <openwrt-devel@lists.openwrt.org>; Sun, 28 Jul 2019 21:38:00 +0200 (CEST)
To: openwrt-devel@lists.openwrt.org
References: <20190723133717.20010-1-ynezz@true.cz>
 <20190723133717.20010-2-ynezz@true.cz>
From: Stijn Tintel <stijn@linux-ipv6.be>
Openpgp: preference=signencrypt
Message-ID: <4b7b8626-5afe-94c1-72cd-a69f79b3c101@linux-ipv6.be>
Date: Sun, 28 Jul 2019 22:38:00 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190723133717.20010-2-ynezz@true.cz>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_123805_765742_60EB7335 
X-CRM114-Status: UNSURE (   6.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] treewide: remove now default
 USE_PROCD=1 from init scripts
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

T24gMjMvMDcvMTkgMTY6MzcsIFBldHIgxaB0ZXRpYXIgd3JvdGU6Cj4gY29tbWl0IDA4YWJkMzYy
MDRhOCAoImJhc2UtZmlsZXM6IG1ha2UgVVNFX1BST0NEPTEgZGVmYXVsdCIpIG1hZGUKPiBVU0Vf
UFJPQ0Q9MSBkZWZhdWx0LCBzbyBsZXQncyByZW1vdmUgdGhpcyBsaW5lIGZyb20gYWxsIGluaXQg
c2NyaXB0cy4KPgo+IFNpZ25lZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+
Cj4gLS0tCj4gIHBhY2thZ2UvYmFzZS1maWxlcy9maWxlcy9ldGMvaW5pdC5kL2dwaW9fc3dpdGNo
ICAgICAgICAgICB8IDEgLQo+ICBwYWNrYWdlL2Jhc2UtZmlsZXMvZmlsZXMvZXRjL2luaXQuZC9z
eXN0ZW0gICAgICAgICAgICAgICAgfCAxIC0KPiAgcGFja2FnZS9rZXJuZWwvb20td2F0Y2hkb2cv
ZmlsZXMvb20td2F0Y2hkb2cuaW5pdCAgICAgICAgIHwgMSAtCj4gIHBhY2thZ2UvbmV0d29yay9j
b25maWcvZmlyZXdhbGwvZmlsZXMvZmlyZXdhbGwuaW5pdCAgICAgICB8IDEgLQo+ICBwYWNrYWdl
L25ldHdvcmsvY29uZmlnL2x0cS1hZHNsLWFwcC9maWxlcy9kc2xfY29udHJvbCAgICAgfCAxIC0K
PiAgcGFja2FnZS9uZXR3b3JrL2NvbmZpZy9sdHEtdmRzbC1hcHAvZmlsZXMvZHNsX2NvbnRyb2wg
ICAgIHwgMSAtCj4gIHBhY2thZ2UvbmV0d29yay9jb25maWcvbmV0aWZkL2ZpbGVzL2V0Yy9pbml0
LmQvbmV0d29yayAgICB8IDEgLQo+ICBwYWNrYWdlL25ldHdvcmsvY29uZmlnL3Fvcy1zY3JpcHRz
L2ZpbGVzL2V0Yy9pbml0LmQvcW9zICAgfCAxIC0KPiAgcGFja2FnZS9uZXR3b3JrL3NlcnZpY2Vz
L2Ruc21hc3EvZmlsZXMvZG5zbWFzcS5pbml0ICAgICAgIHwgMSAtCj4gIHBhY2thZ2UvbmV0d29y
ay9zZXJ2aWNlcy9kcm9wYmVhci9maWxlcy9kcm9wYmVhci5pbml0ICAgICB8IDEgLQo+ICBwYWNr
YWdlL25ldHdvcmsvc2VydmljZXMvaWdtcHByb3h5L2ZpbGVzL2lnbXBwcm94eS5pbml0ICAgfCAx
IC0KPiAgcGFja2FnZS9uZXR3b3JrL3NlcnZpY2VzL2lwc2V0LWRucy9maWxlcy9pcHNldC1kbnMu
aW5pdCAgIHwgMSAtCj4gIHBhY2thZ2UvbmV0d29yay9zZXJ2aWNlcy9sbGRwZC9maWxlcy9sbGRw
ZC5pbml0ICAgICAgICAgICB8IDEgLQo+ICBwYWNrYWdlL25ldHdvcmsvc2VydmljZXMvb2RoY3Bk
L2ZpbGVzL29kaGNwZC5pbml0ICAgICAgICAgfCAxIC0KPiAgcGFja2FnZS9uZXR3b3JrL3NlcnZp
Y2VzL29tY3Byb3h5L2ZpbGVzL29tY3Byb3h5LmluaXQgICAgIHwgMSAtCj4gIHBhY2thZ2UvbmV0
d29yay9zZXJ2aWNlcy9vcGVudnBuL2ZpbGVzL29wZW52cG4uaW5pdCAgICAgICB8IDEgLQo+ICBw
YWNrYWdlL25ldHdvcmsvc2VydmljZXMvcmVsYXlkL2ZpbGVzL3JlbGF5LmluaXQgICAgICAgICAg
fCAxIC0KPiAgcGFja2FnZS9uZXR3b3JrL3NlcnZpY2VzL3NhbWJhMzYvZmlsZXMvc2FtYmEuaW5p
dCAgICAgICAgIHwgMSAtCj4gIHBhY2thZ2UvbmV0d29yay9zZXJ2aWNlcy91aHR0cGQvZmlsZXMv
dWh0dHBkLmluaXQgICAgICAgICB8IDEgLQo+ICBwYWNrYWdlL25ldHdvcmsvc2VydmljZXMvdW1k
bnMvZmlsZXMvdW1kbnMuaW5pdCAgICAgICAgICAgfCAxIC0KPiAgcGFja2FnZS9uZXR3b3JrL3V0
aWxzL2xpbnV4LWF0bS9maWxlcy9icjI2ODRjdGwgICAgICAgICAgIHwgMSAtCj4gIHBhY2thZ2Uv
c3lzdGVtL2ZzdG9vbHMvZmlsZXMvYmxvY2tkLmluaXQgICAgICAgICAgICAgICAgICB8IDEgLQo+
ICBwYWNrYWdlL3N5c3RlbS9ycGNkL2ZpbGVzL3JwY2QuaW5pdCAgICAgICAgICAgICAgICAgICAg
ICAgfCAxIC0KPiAgcGFja2FnZS9zeXN0ZW0vdWJveC9maWxlcy9sb2cuaW5pdCAgICAgICAgICAg
ICAgICAgICAgICAgIHwgMSAtCj4gIHBhY2thZ2Uvc3lzdGVtL3VyYW5kb20tc2VlZC9maWxlcy9l
dGMvaW5pdC5kL3VyYW5kb21fc2VlZCB8IDEgLQo+ICBwYWNrYWdlL3N5c3RlbS91cm5nZC9maWxl
cy91cm5nZC5pbml0ICAgICAgICAgICAgICAgICAgICAgfCAxIC0KPiAgcGFja2FnZS91dGlscy9i
dXN5Ym94L2ZpbGVzL2Nyb24gICAgICAgICAgICAgICAgICAgICAgICAgIHwgMSAtCj4gIHBhY2th
Z2UvdXRpbHMvYnVzeWJveC9maWxlcy9zeXNudHBkICAgICAgICAgICAgICAgICAgICAgICB8IDEg
LQo+ICBwYWNrYWdlL3V0aWxzL2N0LWJ1Z2NoZWNrL3NyYy9idWdjaGVjay5pbml0ZCAgICAgICAg
ICAgICAgfCAxIC0KPiAgcGFja2FnZS91dGlscy9tZGFkbS9maWxlcy9tZGFkbS5pbml0ICAgICAg
ICAgICAgICAgICAgICAgIHwgMSAtCj4gIHBhY2thZ2UvdXRpbHMvdWdwcy9maWxlcy91Z3BzLmlu
aXQgICAgICAgICAgICAgICAgICAgICAgICB8IDEgLQo+ICBwYWNrYWdlL3V0aWxzL3VzYm1vZGUv
ZmlsZXMvdXNibW9kZS5pbml0ICAgICAgICAgICAgICAgICAgfCAxIC0KPiAgMzIgZmlsZXMgY2hh
bmdlZCwgMzIgZGVsZXRpb25zKC0pCj4KPgpBY2tlZC1ieTogU3Rpam4gVGludGVsIDxzdGlqbkBs
aW51eC1pcHY2LmJlPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVu
d3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Blbndy
dC1kZXZlbAo=
