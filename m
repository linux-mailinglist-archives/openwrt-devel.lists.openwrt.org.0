Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9F43E9DE3
	for <lists+openwrt-devel@lfdr.de>; Wed, 30 Oct 2019 15:51:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sxIfgB5rL3VX3/DU55dNBc4ZIU5aLd6kjeliuxSCVII=; b=MFF0wLeC/gXybg
	LkfQegClCiwtj/cwUw2c6SzvwB++dQAqOToafzJ6eycJcqGvSJaOlzHXFMVkWdL1gHhtKcNqXsQxU
	i/PQpT7K6aLwDtMuoShTVao+XPuNiJNNTTMMJizWY0I092kbpjzO/X6wdL6DD4lsc9A8gVpE0Cwd0
	G/akMe5t9C877KfaX+XMs7Xy2wcb0qjjElbbfnIrNCzUfK+gTAUp1Gkp3iTJ8ZKoxdZrg3hhGrsem
	mbNO+wxx3GLefnCugMI4FW5sF9oECsoqfQLRevhghwOt1sFUDpF1K7mxkgO1tD8Vu3+92BeG1xfON
	cf3eF0riyOQ739kycVLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPpKD-0004yp-Q8; Wed, 30 Oct 2019 14:51:53 +0000
Received: from mail-il1-x132.google.com ([2607:f8b0:4864:20::132])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPpK7-0004y1-AO
 for openwrt-devel@lists.openwrt.org; Wed, 30 Oct 2019 14:51:48 +0000
Received: by mail-il1-x132.google.com with SMTP id p8so2393846ilp.2
 for <openwrt-devel@lists.openwrt.org>; Wed, 30 Oct 2019 07:51:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=+ZPoiapQD/vxkGxXI3I9Mcv7T6wpRgRDpbFm5aDROx0=;
 b=pWvzlFCHaCj5/4AHyicVg/xKQb57ZIteY9yPSUw2rByNCtt2d9BkGIAwDAu9UMF9WT
 wYx4NRInGUFE5xkwEAceAPsXOzpXjocY5Bg0Yn3g+WOEDp80kzLvXbG+7vRx6WmXfJYV
 dIQsQbFQDwSbCHZom9Zho2RsxmSrDTNnpDLZLNd2E9uruS7RxjviB0M9sreRmzLpednQ
 +rjm6JLDiTacbEgV9VTaZfcqJ/BjJu9BtJq6RbgTiGGHxpnAGOvLLHnTZq9zvcmwF14I
 Bor/33y9wsc4GQyV8zVtei3rhGQIDgBDplOa9TYVMEJqJXVO2F+tmS1G3Xq2945Df4xB
 XhyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=+ZPoiapQD/vxkGxXI3I9Mcv7T6wpRgRDpbFm5aDROx0=;
 b=FddpfN+A3Dso1Tkkximhc+x6bdd6l1zI/shT8vUokCL+Ys9U+1TPbJAOknw8v5lb1e
 tHbKdR5H2IceE19Y5O/uqlZ3ErxZjv1ZrLGbXGsG5b+gj7/FwiS+jZnRcCtGc4dKb9Nj
 j37KfRP4VnqPKlZGbdrvZmZWPt58duIhbEkLraflmXD54DuzGpOHer1kjCjLUIp7lm9Z
 9q5x88pOm6FtoC3GLVMsy3nfnhZWQWEkNapHiYSQubHdIu1SlUbohNd7A+XnJMWRmXY8
 Puo8bX1cP/yi8dQgwT8temvceCnwcXCRmpfKUPJgUUFpWbrSz2eKeD4CHAuqxFfewoJl
 +nQQ==
X-Gm-Message-State: APjAAAUB52ox5GLG5GB7dVfEL/H4az5K/rE0GJo4AWSLZo5IddZTEo6T
 drSIWsUXke9629KVfze5JgaEqPwC0IQlXKpnUxY=
X-Google-Smtp-Source: APXvYqx8fe0LYnR2rzLSzvQqMInPp3TVNRoSX4kxMS+8a/vdqsuOqrOJEN0wluMHcJjuUJygt5lnh6uZnKeDuYM6Iz8=
X-Received: by 2002:a92:ab08:: with SMTP id v8mr406126ilh.215.1572447104247;
 Wed, 30 Oct 2019 07:51:44 -0700 (PDT)
MIME-Version: 1.0
References: <00b501d58f2e$a14292e0$e3c7b8a0$@adrianschmutzler.de>
In-Reply-To: <00b501d58f2e$a14292e0$e3c7b8a0$@adrianschmutzler.de>
From: Dmitry Tunin <hanipouspilot@gmail.com>
Date: Wed, 30 Oct 2019 17:51:33 +0300
Message-ID: <CANoib0G2ViuUjdkE_hWE4ETsLr4=XUF6sPoM_gFMEKOSw4Dccg@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_075147_383400_FDF8C2D2 
X-CRM114-Status: UNSURE (   8.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:132 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hanipouspilot[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] ath79/qca9533rev2: Help needed on missing GPIO
 on ath9k-phy0
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

0YHRgCwgMzAg0L7QutGCLiAyMDE5INCzLiDQsiAxNzozMSwgQWRyaWFuIFNjaG11dHpsZXIgPG1h
aWxAYWRyaWFuc2NobXV0emxlci5kZT46Cj4KPiBIaSwKPgo+IHdlIGFyZSBzdGlsbCB3b3JraW5n
IG9uIGJyb2tlbiBXaUZpIG9uIENQRTIxMHYyL3YzIChhdGg3OSwgUUNBOTUzMyByZXYuIDIpIGFu
ZCBoYXZlIGZvdW5kIHRoYXQgb24gYXRoNzkgYSBHUElPIGlzIG1pc3NpbmcgY29tcGFyZWQgdG8g
YXI3MXh4ICh3aGVyZSBXSUZJIGlzIHdvcmtpbmcpOgo+Cj4gR1BJTyBDb25maWcgb24gdGhlIGFy
NzF4eDoKPgo+IGdwaW9jaGlwMDogR1BJT3MgMC0zMSwgcGFyZW50OiBwbGF0Zm9ybS9hdGg3OS1n
cGlvLCBhdGg3OS1ncGlvOgo+ICBncGlvLTExICAoICAgICAgICAgICAgICAgICAgICB8dHAtbGlu
azpncmVlbjpsYW4wICApIG91dCBoaQo+ICBncGlvLTEzICAoICAgICAgICAgICAgICAgICAgICB8
dHAtbGluazpncmVlbjpsaW5rMSApIG91dCBoaQo+ICBncGlvLTE0ICAoICAgICAgICAgICAgICAg
ICAgICB8dHAtbGluazpncmVlbjpsaW5rMiApIG91dCBoaQo+ICBncGlvLTE1ICAoICAgICAgICAg
ICAgICAgICAgICB8dHAtbGluazpncmVlbjpsaW5rMyApIG91dCBoaQo+ICBncGlvLTE2ICAoICAg
ICAgICAgICAgICAgICAgICB8dHAtbGluazpncmVlbjpsaW5rNCApIG91dCBoaQo+ICBncGlvLTE3
ICAoICAgICAgICAgICAgICAgICAgICB8UmVzZXQgYnV0dG9uICAgICAgICApIGluICBoaQo+Cj4g
Z3Bpb2NoaXAxOiBHUElPcyA0OTQtNTExLCBhdGg5ay1waHkwOgo+ICBncGlvLTQ5NSAoICAgICAg
ICAgICAgICAgICAgICB8YXRoOWstcGh5MCAgICAgICAgICApIGluICBsbwo+Cj4KPiBPbiB0aGUg
YXRoNzk6Cj4KPiAgZ3Bpby0xMSAgKCAgICAgICAgICAgICAgICAgICAgfHRwLWxpbms6Z3JlZW46
bGFuICAgKSBvdXQgbG8KPiAgZ3Bpby0xMyAgKCAgICAgICAgICAgICAgICAgICAgfHRwLWxpbms6
Z3JlZW46bGluazEgKSBvdXQgaGkKPiAgZ3Bpby0xNCAgKCAgICAgICAgICAgICAgICAgICAgfHRw
LWxpbms6Z3JlZW46bGluazIgKSBvdXQgaGkKPiAgZ3Bpby0xNSAgKCAgICAgICAgICAgICAgICAg
ICAgfHRwLWxpbms6Z3JlZW46bGluazMgKSBvdXQgaGkKPiAgZ3Bpby0xNiAgKCAgICAgICAgICAg
ICAgICAgICAgfHRwLWxpbms6Z3JlZW46bGluazQgKSBvdXQgaGkKPiAgZ3Bpby0xNyAgKCAgICAg
ICAgICAgICAgICAgICAgfFJlc2V0IGJ1dHRvbiAgICAgICAgKSBpbiAgaGkKPgo+Cj4gQ2FuIHNv
bWVib2R5IHBvaW50IG91dCBob3cgd2UgY2FuIGludHJvZHVjZSB0aGUgYXRoOWsgZ3Bpbz8gT3Ig
bWF5IHRoaXMgYmUgYWxyZWFkeSB0aGUgcmVzdWx0IG9mIHNvbWV0aGluZyBicm9rZW4gYXQgYW4g
ZWFybGllciBzdGVwPwoKV2hlcmUgSSBjYW4gc2VlIHRoZSBEVFM/IEdlbmVyYWxseSBhdGg5ayBn
cGlvIGlzIGFkZGVkIGJ5CmdwaW8tY29udHJvbGxlciBwcm9wZXJ0eSB0byB0aGUgYXRoOWsgbm9k
ZS4gU2VlIGRpcjgyNWIxIGFzIGFuIGV4YW1wbGUKYW4gbWFueSBvdGhlcnMuCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxp
bmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3Bl
bndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
