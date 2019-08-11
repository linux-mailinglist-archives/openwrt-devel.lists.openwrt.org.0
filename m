Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D837489131
	for <lists+openwrt-devel@lfdr.de>; Sun, 11 Aug 2019 12:06:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ADf3WtljdjPBB4dhekzTZIvk2gWbZnZ73ZCfLwnTigY=; b=b+pRoCPnR4eZsQd+zrjYdjI2e
	9ZxsV7Swit7q4gs8zt5jggmGZ/QmlZ7JZkjw4gkcplPRJQvOFoNaRfOyGuoHI5IGzHmP0STkOHCMy
	Q3Tsp1xBe2MhJR87IqYRdKSB4TKmgQ2ICfN31wXYgjRoAiRFAQ+zoDVgCGtGODXCl9xxDRhOuHQjr
	RQnvDL1HvshXq7xeB1Tf0yTCWJ2hn5Df5xGALWlprZ1Ry4hezbX+nX+qhSxHQZEvhUILLiSKV8uF4
	KzMWagsCiyuZuWP3oscBZCz/pWyT8LQH9c3mzrUPFs81vhu/CjjhExLVU4c3maffGx8ZjEk/KC1qq
	lPsMu6bOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwkkH-0001pM-KN; Sun, 11 Aug 2019 10:06:37 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwkjm-0001o7-OZ
 for openwrt-devel@lists.openwrt.org; Sun, 11 Aug 2019 10:06:08 +0000
Received: by mail-lj1-x243.google.com with SMTP id p17so95882190ljg.1
 for <openwrt-devel@lists.openwrt.org>; Sun, 11 Aug 2019 03:06:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:cc:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=TvaQKzr7b16IbdE/8qYqbKsdOA16kxAAgRHCda3wa2Q=;
 b=aLBllqt/fz1fgiovurlCgerDyXowL+b3H1jOg2JifnK25KWbRDDX1zmnCKuIDDBNfy
 +hzg9u369+BYHnZtX2+dL/T6mspv+ZvyplapeF4QSDaJab6OZ54Nzo36IYmPLpkasyfr
 HGPLf6xnFT9BNGGIcQqSPK6kPmy+64S6N9woSe/Qgc71cGqIqUKtQnoqtF5naimTURvx
 6HPB0mWizoNHc+GoAOJV1ojGhC2Vy1qIW+/Bhvmd9e8VZy6bppEHB1L8sLiwfQ9qtfqi
 ngpaMrttGTc3P2YNtKUhNPaCD28cRF1suOTKZV3/3e/aGcOvfQ+F+/Ge+8gSl7V35vvK
 vKbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:cc:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=TvaQKzr7b16IbdE/8qYqbKsdOA16kxAAgRHCda3wa2Q=;
 b=Xw5RpX0RPcKP788FsYMxDkkojcgLdfzMmSnvPKQZfYroEexrOHtpHowKoFdO8wPt9B
 W41RkLOwwFbR+JqW8bCx3V4W5KvYp+PmAK/DNH12B6nwSudE4U3x7lOhz0+YNt55+wfm
 M5VDeYGkd+D2ielvaDifcpE/wPMWTOiv1C9zFFUoLvahL7HKPRajNtbc+vOQqiItoPgQ
 uFaeZCQ1/Fr/aE4MXl2zvN3rerelgVkBVV11e/Hw4MSEl6H7yggOLvzJwMzpjPaNguhn
 8NGuorQNlq1yDGiFoKbmyk3is8H1l2C9RPyrJLel8hCEDyRMuabmFCiHZ9gRAzprQgUw
 Zlpw==
X-Gm-Message-State: APjAAAXN9GDflPxBpAb0wIna4EWAre2P3D1y7PNE5dB2DEYioH4RtnwW
 sSWne4IEYE9zi2NSCMOSzsuPERLe
X-Google-Smtp-Source: APXvYqwPosibX1q2BiluXuE3B/Vfv0k5BZqHyD5iO+fPX2PePZxAtIOFclO3XLQjwOwMPKknTIojgw==
X-Received: by 2002:a2e:3e18:: with SMTP id l24mr1178282lja.67.1565517962400; 
 Sun, 11 Aug 2019 03:06:02 -0700 (PDT)
Received: from [192.168.43.147] (apn-31-0-45-155.dynamic.gprs.plus.pl.
 [31.0.45.155])
 by smtp.gmail.com with ESMTPSA id d16sm6214121lfn.36.2019.08.11.03.06.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 11 Aug 2019 03:06:01 -0700 (PDT)
To: Mathias Kresin <dev@kresin.me>, Birger Koblitz <mail@birger-koblitz.de>
References: <2f56d90d-39bf-7f63-0676-e0856e6d9f15@birger-koblitz.de>
 <75e48acf-8bfa-5101-3f9a-02ae2cc43c0a@kresin.me>
From: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <de6aa12b-8e9d-413c-7577-16b4d400f725@gmail.com>
Date: Sun, 11 Aug 2019 12:06:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <75e48acf-8bfa-5101-3f9a-02ae2cc43c0a@kresin.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_030606_983864_1E5A394B 
X-CRM114-Status: GOOD (  17.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pepe2k[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: use gpio_hog instead of
 gpio-export
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgTWF0aGlhcywgQmlyZ2VyLAoKT24gMTEuMDguMjAxOSAxMTozNiwgTWF0aGlhcyBLcmVzaW4g
d3JvdGU6Cj4gMDIvMDgvMjAxOSAxMTo1OCwgQmlyZ2VyIEtvYmxpdHo6Cj4+IHJhbWlwczogdXNl
IGdwaW9faG9nIGluc3RlYWQgb2YgZ3Bpby1leHBvcnQKPj4gCj4+IFRoZSBgZ3Bpby1leHBvcnRg
IGZ1bmN0aW9uYWxpdHkgaXMgYSBoYWNrIGZvcgo+PiBtaXNzaW5nIGtlcm5lbCBmdW5jdGlvbmFs
aXR5LCB3aGljaCB3YXMgcmVqZWN0ZWQgaW4gdXBzdHJlYW0ga2VybmVsIGxvbmcKPj4gdGltZQo+
PiBhZ28sIGZvciBkZXRhaWxzIHNlZSB0aGlzIGVtYWlsCj4+IGh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL3BpcGVybWFpbC9vcGVud3J0LWRldmVsLzIwMTktRmVicnVhcnkvMDE1NzcyLmh0bWws
Cj4+IGRpc2N1c3Npb24gaW4gUFIjMTM2NiBvcgo+PiBodHRwczovL2dpdGh1Yi5jb20vb3Blbndy
dC9vcGVud3J0L3B1bGwvMTgxNCNpc3N1ZWNvbW1lbnQtNDYyOTQyMDIyLgo+PiAKPj4gVGhpcyBw
YXRjaCBjb252ZXJ0cyBhbGwgcmVtYWluaW5nIHJhbWlwcyAuZHRzKGkpIGZpbGVzIHdoaWNoIHdl
cmUKPj4gdXNpbmcgZXhwb3J0LWdwaW8gYW5kIG5vdCBtYWtpbmcgdXNlIG9mIHRoZSBjaGFuZ2Ut
ZGlyZWN0aW9uIGZ1bmN0aW9uYWxpdHkKPj4gdG8gdXNpbmcgZ3Bpb19ob2cgaW5zdGVhZAo+PiAK
Pj4gU2lnbmVkLW9mZi1ieTogQmlyZ2VyIEtvYmxpdHogPG1haWxAYmlyZ2VyLWtvYmxpdHouZGU+
Cj4+IAo+PiAtLS0KPj4gCj4+IGRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvcmFtaXBzL2R0cy9t
dDc2MjBhX2FsZmEtbmV0d29ya190dWJlLWU0Zy5kdHMKPj4gYi90YXJnZXQvbGludXgvcmFtaXBz
L2R0cy9tdDc2MjBhX2FsZmEtbmV0d29ya190dWJlLWU0Zy5kdHMKPj4gaW5kZXggNDA5N2RjNjE0
MC4uZWEwZDk4MDFjMSAxMDA2NDQKPj4gLS0tIGEvdGFyZ2V0L2xpbnV4L3JhbWlwcy9kdHMvbXQ3
NjIwYV9hbGZhLW5ldHdvcmtfdHViZS1lNGcuZHRzCj4+ICsrKyBiL3RhcmdldC9saW51eC9yYW1p
cHMvZHRzL210NzYyMGFfYWxmYS1uZXR3b3JrX3R1YmUtZTRnLmR0cwo+PiBAQCAtMjEsMzkgKzIx
LDYgQEAKPj4gIMKgwqDCoMKgIMKgwqDCoCBib290YXJncyA9ICJjb25zb2xlPXR0eVMwLDExNTIw
MCI7Cj4+ICDCoMKgwqDCoCB9Owo+PiAgIAo+PiAtwqDCoMKgIGdwaW8tZXhwb3J0IHsKPj4gLcKg
wqDCoCDCoMKgwqAgY29tcGF0aWJsZSA9ICJncGlvLWV4cG9ydCI7Cj4+IC3CoMKgwqAgwqDCoMKg
ICNzaXplLWNlbGxzID0gPDA+Owo+PiAtCj4+IC3CoMKgwqAgwqDCoMKgIG1vZGVtLWVuYWJsZSB7
Cj4+IC3CoMKgwqAgwqDCoMKgIMKgwqDCoCBncGlvLWV4cG9ydCxuYW1lID0gIm1vZGVtLWVuYWJs
ZSI7Cj4+IC3CoMKgwqAgwqDCoMKgIMKgwqDCoCBncGlvLWV4cG9ydCxvdXRwdXQgPSA8MT47Cj4+
IC3CoMKgwqAgwqDCoMKgIMKgwqDCoCBncGlvcyA9IDwmZ3BpbzEgMTIgR1BJT19BQ1RJVkVfSElH
SD47Cj4+IC3CoMKgwqAgwqDCoMKgIH07Cj4+IC0KPj4gLcKgwqDCoCDCoMKgwqAgbW9kZW0tcmYt
ZW5hYmxlIHsKPj4gLcKgwqDCoCDCoMKgwqAgwqDCoMKgIGdwaW8tZXhwb3J0LG5hbWUgPSAibW9k
ZW0tcmYtZW5hYmxlIjsKPj4gLcKgwqDCoCDCoMKgwqAgwqDCoMKgIGdwaW8tZXhwb3J0LG91dHB1
dCA9IDwxPjsKPj4gLcKgwqDCoCDCoMKgwqAgwqDCoMKgIGdwaW9zID0gPCZncGlvMCAxMiBHUElP
X0FDVElWRV9ISUdIPjsKPj4gLcKgwqDCoCDCoMKgwqAgfTsKPj4gLQo+PiAtwqDCoMKgIMKgwqDC
oCBzaW0tc2VsZWN0IHsKPj4gLcKgwqDCoCDCoMKgwqAgwqDCoMKgIGdwaW8tZXhwb3J0LG5hbWUg
PSAic2ltLXNlbGVjdCI7Cj4+IC3CoMKgwqAgwqDCoMKgIMKgwqDCoCBncGlvLWV4cG9ydCxvdXRw
dXQgPSA8MD47Cj4+IC3CoMKgwqAgwqDCoMKgIMKgwqDCoCBncGlvcyA9IDwmZ3BpbzAgMTMgR1BJ
T19BQ1RJVkVfSElHSD47Cj4+IC3CoMKgwqAgwqDCoMKgIH07Cj4+IC0KPj4gLcKgwqDCoCDCoMKg
wqAgc2ltMS1kZXRlY3Qgewo+PiAtwqDCoMKgIMKgwqDCoCDCoMKgwqAgZ3Bpby1leHBvcnQsbmFt
ZSA9ICJzaW0xLWRldGVjdCI7Cj4+IC3CoMKgwqAgwqDCoMKgIMKgwqDCoCBncGlvcyA9IDwmZ3Bp
bzAgOSBHUElPX0FDVElWRV9ISUdIPjsKPj4gLcKgwqDCoCDCoMKgwqAgfTsKPj4gLQo+PiAtwqDC
oMKgIMKgwqDCoCBzaW0yLWRldGVjdCB7Cj4+IC3CoMKgwqAgwqDCoMKgIMKgwqDCoCBncGlvLWV4
cG9ydCxuYW1lID0gInNpbTItZGV0ZWN0IjsKPj4gLcKgwqDCoCDCoMKgwqAgwqDCoMKgIGdwaW9z
ID0gPCZncGlvMiAxIEdQSU9fQUNUSVZFX0hJR0g+Owo+PiAtwqDCoMKgIMKgwqDCoCB9Owo+PiAt
wqDCoMKgIH07Cj4+IC0KPiAKPiBIZXkgQmlyZ2VyLAo+IAo+IHNpbWlsYXIgdG8gbXkgY29tbWVu
dCBmb3IgdGhlIGxhbnRpcSB2ZXJzaW9uLCB0aGlzIGRvZXNuJ3Qgd29yayBhcyB3ZWxsLgo+IAo+
IEFGQUlSLCB0aGUgVHViZSBlNGcgaGFzIHR3byBzaW0gY2FyZCBzbG90cyBhbmQgdGhlICJzaW0t
c2VsZWN0IiBncGlvIGlzCj4gc3VwcG9zZWQgdG8gYmUgdXNlZCBmcm9tIHRoZSB1c2Vyc3BhY2Us
IHRvIHNlbGVjdCB3aGljaCBzaW0gY2FyZCBzbG90Cj4gc2hvdWxkIGJlIHVzZWQuCj4gCj4gSWYg
d2UgaG9nIHRoZSBncGlvLCBpdCBjYW4ndCBiZSBtYW5pcHVsYXRlZCBmcm9tIHRoZSB1c2Vyc3Bh
Y2UgYW55bW9yZS4KPiAKPiBJIGhhdmVuJ3QgaGFkIGEgY2xvc2VyIGxvb2sgYXQgdGhlIHBhdGNo
LiBUaGVyZSBtaWdodCBiZSBzaW1pbGFyIGlzc3Vlcwo+IGZvciBvdGhlciBib2FyZHMuCj4gCj4g
QFBpb3RyIGNhbiBjb25maXJtIHdoYXQgSSBtaWdodCB0byByZW1lbWJlcj8KClllcywgeW91J3Jl
IGNvcnJlY3QuCgpBbHNvLCB0aGUgIm1vZGVtLWVuYWJsZSIgc2hvdWxkIGJlIGF2YWlsYWJsZSBp
biB1c2VyIHNwYWNlIGFzIGluIGNhc2Ugb2YgCnNvbWUgbW9kZW1zICh3aXRob3V0ICJTSU0gcG93
ZXIgZG93biIgZmVhdHVyZSBzdXBwb3J0KSwgb25seSB0aGlzIAphcHByb2FjaCB3b3JrcyB3aGVu
IGNoYW5naW5nIFNJTSBjYXJkcy9zbG90czoKCnB1dCB0aGUgbW9kZW0gaW4gcmVzZXQgLT4gc3dp
dGNoIFNJTSBzbG90IC0+IGVuYWJsZSBtb2RlbQoKKHN0aWxsLCB0aGVyZSBpcyBhIHdheSB0byBw
ZXJmb3JtIG1vZGVtIHJlc2V0IHVzaW5nIEFUIGNvbW1hbmQgYnV0IElNSE8gCml0J3Mgbm90IGFz
IGNvbnZlbmllbnQgYXMgdG9nZ2xpbmcgUEVSU1QjIHBpbikKCi0tIApDaGVlcnMsClBpb3RyCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRl
dmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8v
bGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
