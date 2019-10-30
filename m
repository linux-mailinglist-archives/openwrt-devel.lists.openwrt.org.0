Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE5AE9E14
	for <lists+openwrt-devel@lfdr.de>; Wed, 30 Oct 2019 15:57:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y7RjboGctQlzD/mRloHOhrBpMdObUpFN3+tbotbjZDk=; b=qIDhmwZ0hcZrnq
	+YwdrtAZu7RSj3QgpOqFi8SUSezjMxFMBn0EhhQePZVmrv/HA52M6rvzmitZE1NXb/ZBg+x4GQ1Uo
	jgE0mhxqJesZfSVCFCkt/jgIJhvTstc3Yua7U0bSfPDYT5ZrgXaez6p68//CtL5nNBEkQnXzpwZ4B
	NJ3HKn9omnKx6TMtil/O2B8ipFh3TkQlSZDaFZFIMtL/h+fzUbn0OHIsX6X72K9I0RITid4WaJzDf
	lLNkb88FDE28AfGDzJWmhSvLJFCzvCKpk9gC9EFdwzuyhwe710LFJanUvp/4qy5vRhxesqEPRlAaa
	UyN31slCpf2mp62WY/fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPpQ0-00084s-3R; Wed, 30 Oct 2019 14:57:52 +0000
Received: from mail-il1-x129.google.com ([2607:f8b0:4864:20::129])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPpPs-00084K-9b
 for openwrt-devel@lists.openwrt.org; Wed, 30 Oct 2019 14:57:45 +0000
Received: by mail-il1-x129.google.com with SMTP id b12so2363670ilf.12
 for <openwrt-devel@lists.openwrt.org>; Wed, 30 Oct 2019 07:57:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=DBBNmpYYM/Wbk5iv44i13IYH/fCSgSkdgRMzulbZbXI=;
 b=NKNqgclEfBqLwrwbvH+lHlABtovtkQxpXFo+X3x5rog+YAsQkVCMON+A6DO01BB8jr
 HV0+Hg5JjdaryVfa4p/W3DlMNxqT9GwfnKQMKNBmGWxrIreAdfvMJ9VA3RQYgPbd8w2C
 iKfAd3RjijKCJ28KPAJ1AuF9P5Api8OgOfK6oCwmVXUGzJWEGnmVzIxWn86Wh52NR4Ib
 OL9S+7U5zDKNWHM2cY7UzV662rLth/wfFh91OSC0xVrOK0d6U+/b99hZEF+iT9Pvh18y
 nXr/XDqAAtA4bMLyJjbW6wQCsss4u+Y4BFnG+U29mDnQZr8u4I6ybQ9sgD+bwdvQ9SMW
 xgWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=DBBNmpYYM/Wbk5iv44i13IYH/fCSgSkdgRMzulbZbXI=;
 b=hIIOaTtYspJm2JTOMg1f2aVSiwXjuwiGuZj426xejUhm/sn2pscbKryaARUmSdArPA
 alLD8Thgjaz/r3+61IdGFMB+40+xneQaZHXeGEHvL1XbSdY9LYRnfg3ZHHJ9u3sXakX4
 c+RvdBUBglqXRGQr3VcJyQ6+2X2C9pPnVtiOR75Yi4ZR2NvPX1Fv6UFmYaflB8qsjPeX
 UJZLlk8QpHoFpJoVp06dsgwdnoHymaSWUG09LdWk97YQb0rnVWMQr7o5zT0hPe5bxiaU
 K7WfNnL4R2pyZJCKuh2hziR9YDeTZjbUKs+kivxVT9M7Kh9dekLs2I98NIwzIFrdk7Xy
 5wTg==
X-Gm-Message-State: APjAAAXEo035VGqsaDC21MilXAyh88JNzEw0uGpz26vejqe1UlWJLqCj
 iNPjkHWDPfNTPaq1ylRYIy4BP6DymRajb3rDyEUhhs6Q
X-Google-Smtp-Source: APXvYqyrEzFUx6fMOBDzgQfRx7yp18Vui3ME4viRV56ECNBbybgdHQbCa1WmakLb25adW4qldYgbmzF/lxg3fBaMwVg=
X-Received: by 2002:a05:6e02:cd0:: with SMTP id
 c16mr548578ilj.226.1572447462575; 
 Wed, 30 Oct 2019 07:57:42 -0700 (PDT)
MIME-Version: 1.0
References: <00b501d58f2e$a14292e0$e3c7b8a0$@adrianschmutzler.de>
 <CANoib0G2ViuUjdkE_hWE4ETsLr4=XUF6sPoM_gFMEKOSw4Dccg@mail.gmail.com>
In-Reply-To: <CANoib0G2ViuUjdkE_hWE4ETsLr4=XUF6sPoM_gFMEKOSw4Dccg@mail.gmail.com>
From: Dmitry Tunin <hanipouspilot@gmail.com>
Date: Wed, 30 Oct 2019 17:57:31 +0300
Message-ID: <CANoib0F2xLSMzHq8pSQ3mxzWUNDOdq2miYfN6WxNAYV6t1Tipg@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_075744_364284_271E4814 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:129 listed in]
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

SXMgb25lIHdpcmVsZXNzIGFkYXB0ZXIgY29ubmVjdGVkIHVzaW5nIFBDSUU/IElmIGl0IGlzIHRy
dWUsIHlvdSdsbApoYXZlIHRvIHNldCBpdCdzIG5vZGUgaW4gRFRTLgpHZW5lcmFsbHkgaXQncyBu
b3QgcmVxdWlyZWQsIGJ1dCBpZiB5b3UgbmVlZCBhIGdwaW8gY29udHJvbGxlciwgdGhlbgp5b3Ug
aGF2ZSB0by4KCtGB0YAsIDMwINC+0LrRgi4gMjAxOSDQsy4g0LIgMTc6NTEsIERtaXRyeSBUdW5p
biA8aGFuaXBvdXNwaWxvdEBnbWFpbC5jb20+Ogo+Cj4g0YHRgCwgMzAg0L7QutGCLiAyMDE5INCz
LiDQsiAxNzozMSwgQWRyaWFuIFNjaG11dHpsZXIgPG1haWxAYWRyaWFuc2NobXV0emxlci5kZT46
Cj4gPgo+ID4gSGksCj4gPgo+ID4gd2UgYXJlIHN0aWxsIHdvcmtpbmcgb24gYnJva2VuIFdpRmkg
b24gQ1BFMjEwdjIvdjMgKGF0aDc5LCBRQ0E5NTMzIHJldi4gMikgYW5kIGhhdmUgZm91bmQgdGhh
dCBvbiBhdGg3OSBhIEdQSU8gaXMgbWlzc2luZyBjb21wYXJlZCB0byBhcjcxeHggKHdoZXJlIFdJ
RkkgaXMgd29ya2luZyk6Cj4gPgo+ID4gR1BJTyBDb25maWcgb24gdGhlIGFyNzF4eDoKPiA+Cj4g
PiBncGlvY2hpcDA6IEdQSU9zIDAtMzEsIHBhcmVudDogcGxhdGZvcm0vYXRoNzktZ3BpbywgYXRo
NzktZ3BpbzoKPiA+ICBncGlvLTExICAoICAgICAgICAgICAgICAgICAgICB8dHAtbGluazpncmVl
bjpsYW4wICApIG91dCBoaQo+ID4gIGdwaW8tMTMgICggICAgICAgICAgICAgICAgICAgIHx0cC1s
aW5rOmdyZWVuOmxpbmsxICkgb3V0IGhpCj4gPiAgZ3Bpby0xNCAgKCAgICAgICAgICAgICAgICAg
ICAgfHRwLWxpbms6Z3JlZW46bGluazIgKSBvdXQgaGkKPiA+ICBncGlvLTE1ICAoICAgICAgICAg
ICAgICAgICAgICB8dHAtbGluazpncmVlbjpsaW5rMyApIG91dCBoaQo+ID4gIGdwaW8tMTYgICgg
ICAgICAgICAgICAgICAgICAgIHx0cC1saW5rOmdyZWVuOmxpbms0ICkgb3V0IGhpCj4gPiAgZ3Bp
by0xNyAgKCAgICAgICAgICAgICAgICAgICAgfFJlc2V0IGJ1dHRvbiAgICAgICAgKSBpbiAgaGkK
PiA+Cj4gPiBncGlvY2hpcDE6IEdQSU9zIDQ5NC01MTEsIGF0aDlrLXBoeTA6Cj4gPiAgZ3Bpby00
OTUgKCAgICAgICAgICAgICAgICAgICAgfGF0aDlrLXBoeTAgICAgICAgICAgKSBpbiAgbG8KPiA+
Cj4gPgo+ID4gT24gdGhlIGF0aDc5Ogo+ID4KPiA+ICBncGlvLTExICAoICAgICAgICAgICAgICAg
ICAgICB8dHAtbGluazpncmVlbjpsYW4gICApIG91dCBsbwo+ID4gIGdwaW8tMTMgICggICAgICAg
ICAgICAgICAgICAgIHx0cC1saW5rOmdyZWVuOmxpbmsxICkgb3V0IGhpCj4gPiAgZ3Bpby0xNCAg
KCAgICAgICAgICAgICAgICAgICAgfHRwLWxpbms6Z3JlZW46bGluazIgKSBvdXQgaGkKPiA+ICBn
cGlvLTE1ICAoICAgICAgICAgICAgICAgICAgICB8dHAtbGluazpncmVlbjpsaW5rMyApIG91dCBo
aQo+ID4gIGdwaW8tMTYgICggICAgICAgICAgICAgICAgICAgIHx0cC1saW5rOmdyZWVuOmxpbms0
ICkgb3V0IGhpCj4gPiAgZ3Bpby0xNyAgKCAgICAgICAgICAgICAgICAgICAgfFJlc2V0IGJ1dHRv
biAgICAgICAgKSBpbiAgaGkKPiA+Cj4gPgo+ID4gQ2FuIHNvbWVib2R5IHBvaW50IG91dCBob3cg
d2UgY2FuIGludHJvZHVjZSB0aGUgYXRoOWsgZ3Bpbz8gT3IgbWF5IHRoaXMgYmUgYWxyZWFkeSB0
aGUgcmVzdWx0IG9mIHNvbWV0aGluZyBicm9rZW4gYXQgYW4gZWFybGllciBzdGVwPwo+Cj4gV2hl
cmUgSSBjYW4gc2VlIHRoZSBEVFM/IEdlbmVyYWxseSBhdGg5ayBncGlvIGlzIGFkZGVkIGJ5Cj4g
Z3Bpby1jb250cm9sbGVyIHByb3BlcnR5IHRvIHRoZSBhdGg5ayBub2RlLiBTZWUgZGlyODI1YjEg
YXMgYW4gZXhhbXBsZQo+IGFuIG1hbnkgb3RoZXJzLgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3Blbndy
dC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxt
YW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
