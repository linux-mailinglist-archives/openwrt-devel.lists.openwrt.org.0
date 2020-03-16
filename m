Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F3DB1865C3
	for <lists+openwrt-devel@lfdr.de>; Mon, 16 Mar 2020 08:38:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p0Y/Pz2Ah3V190zVzxQ9UBiUdZU4QVZr3QT/0lz9Qtg=; b=N7zpBjXDWGU/F/
	ELxX9nG/ZevPLab1dDilorPkLaHGcLEZEqK8GO9zDg2x2gOUOIEpd9YTr84VPQ7dz4d4sbZH06Fg3
	5m+E5ZsNuNnADw5/SeQPbugwPIdihf7Ad1YUcqWLSx4cXOYx+TeUnjfm1flGoRNZScz2cO1qtSGUc
	5fjhDcJTtC+tMgdLQYAND3FgGSE1B0hdMTCjG0l+L25kpRZfXgdWXgMezJICuXuONcanRK4mdJ18x
	bwU7bxEZwTbQiWSqfZ61A6Q7AcbydEE3LQ+1jVU2dMyB9aueo++S0T5JK6glxne1/TkAg/bWC8m5U
	ykuozfZ+k49v6dC9UYBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDkK9-0002hj-F3; Mon, 16 Mar 2020 07:38:09 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDkK2-0002hG-PF
 for openwrt-devel@lists.openwrt.org; Mon, 16 Mar 2020 07:38:05 +0000
Received: by mail-qk1-x742.google.com with SMTP id s11so13162489qks.8
 for <openwrt-devel@lists.openwrt.org>; Mon, 16 Mar 2020 00:38:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Wz2zXlwwstU6FDM2gPAsZN77yMAEoVz9bT5drEeWDoc=;
 b=kUvH1iIT0UaigUK4QAxyxCmMBQa3nT5rfD3BHwlieKSpPwjKgBPdFwC9S1FQsO0oLh
 qPQgK35Tg2uj202RrDp2LTEVSnbg7UzApkjyvea9YrWOzI4eNqnVqyCXR99zfg9SSQ1Z
 hNir65eXmw1osf918l3ekaSOr07eizU7sTQFVM+mzMDkNbjnsxQ0MX/UABKByGOB1hqq
 +esFTX4wGKwwpQWMmHFf3IzskUjlGw3go4EfwgDzc3kZ0kTFdSeL7tuAeuyMG5v76/+d
 wTU4qeGRVSUZH/5nEIwfEVb8rl0kTXNpLReursLtZrqAbrHyE9xlBq1UM2ggy8RpuaeU
 b5aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Wz2zXlwwstU6FDM2gPAsZN77yMAEoVz9bT5drEeWDoc=;
 b=QFWOtH6bvGawRjEsS6KMJEJcgC+/O4p8iRPsNwgtGCQ6pjbvs8SQP7PSVNomNqldxr
 nwhEFFTF8ptOIv6yx3lLCdgs4B6B5tmPdFXAnh1IQw17EVAHfNmWZFF83RSGf2+2g8/H
 YPyCT3/pu4BOsF498N88GGkVCcVroVbSOCxMF/FrPBw8mv6d+DY5mucguTGU0Q47F5Fq
 klDtRDZ1WUs5r8StkQDka9UCbqk/j6RUJHmxxEhcaLp4WMmUrd8w1cECVLa6okM5y3yr
 m6mUP03lWd8MzyX6y8Crzd1kYHg6PeFBmOsrIUWc7DqYhnQ/hVz/phqwnNXOBvGYxBhQ
 y4AQ==
X-Gm-Message-State: ANhLgQ0O8w6pB4heT9MVGfV0RSNpjzOW8nNzZGAAPF2sYbT9HpEPR4qt
 8fHHDQVuGwX4SgmAj1l7s4DIvgY82uFFs69TncQ=
X-Google-Smtp-Source: ADFU+vvWP1ZQYa6YgVxsRTApoUfgImTLJE7r7UJ3gc8tvDtIeckT7fYGQZJz+k+srwJXwY4YCd7Qo7tAgRyIn6pobNU=
X-Received: by 2002:ae9:e306:: with SMTP id v6mr25541606qkf.2.1584344280694;
 Mon, 16 Mar 2020 00:38:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200305193427.17434-1-dev@kresin.me>
 <CAF1oqRBVWHEHG37GTnUZ0vW-VsvK4pTp0rUBJq-MP3+wgCXOdw@mail.gmail.com>
 <8294a7b0-68f5-9708-72b6-8d7207cad8b9@kresin.me>
In-Reply-To: <8294a7b0-68f5-9708-72b6-8d7207cad8b9@kresin.me>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Mon, 16 Mar 2020 08:37:49 +0100
Message-ID: <CAJLcKsEL1yhYfqs0V+ksygMS+ZWyFc1__ge9r=tbm95wHQPtJw@mail.gmail.com>
To: Mathias Kresin <dev@kresin.me>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_003802_849167_09E906E8 
X-CRM114-Status: GOOD (  18.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dedeckeh[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] iproute2: revert add libcap support,
 enabled in ip-full
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
Cc: =?UTF-8?B?QWxpbiBOxINzdGFj?= <alin.nastac@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgTWF0aGlhcywKCk9uIFN1biwgTWFyIDE1LCAyMDIwIGF0IDExOjQwIFBNIE1hdGhpYXMgS3Jl
c2luIDxkZXZAa3Jlc2luLm1lPiB3cm90ZToKPgo+IDA1LzAzLzIwMjAgMjM6MjksIEFsaW4gTsSD
c3RhYzoKPiA+IE9uIFRodSwgTWFyIDUsIDIwMjAgYXQgODozNCBQTSBNYXRoaWFzIEtyZXNpbiA8
ZGV2QGtyZXNpbi5tZT4gd3JvdGU6Cj4gPj4KPiA+PiBUaGlzIHJldmVydHMgY29tbWl0IGE2ZGEz
ZjllZjc0NjEwMWI4NGE2ZjUzMGY1YTQwZGUyODM0MWI2OWEuCj4gPgo+ID4gTm90IGV4YWN0bHkg
YSByZXZlcnQsIHNpbmNlIGl0IGtlZXBzIEhBVkVfQ0FQIGxvZ2ljLgo+Cj4gU3VyZSwgSSB3YW50
IHRvIG1ha2Ugc3VyZSB0aGF0IEhBVkVfQ0FQIGlzIHJlYWxseSBkaXNhYmxlZC4KPgo+ID4+IFRo
ZSBsaWJjYXAgaXNuJ3QgYXMgb3B0aW9uYWwgYXMgdGhlIGNvbW1pdCBtZXNzYWdlcyBzdWdnZXN0
cy4gQSBoYXJkCj4gPj4gZGVwZW5kZW5jeSB0byB0aGUgbGliY2FwIHBhY2thZ2UgaXMgYWRkZWQs
IHdoaWNoIGlzIG9ubHkgYXZhaWxhYmxlIGluCj4gPj4gdGhlIGV4dGVybmFsIHBhY2thZ2VzIGZl
ZWQuIFRoZXJlZm9yZSBpdCBpcyBpbXBvc3NpYmxlIHRvIHBhY2thZ2UKPiA+PiBpcC1mdWxsIHdp
dGhvdXQgaGF2aW5nIHRoZSBleHRlcm5hbCBwYWNrYWdlcyBmZWVkIHVwIGFuZCBydW5uaW5nLCB3
aGljaAo+ID4+IGlzIGEgcmVncmVzc2lvbiB0byB0aGUgZm9ybWVyIGJlaGF2aW91ci4KPiA+Cj4g
PiBUaGUgbGliY2FwIHN1cHBvcnQgaXMgYnkgYWxsIG1lYW5zIG9wdGlvbmFsLCBvdGhlcndpc2Ug
aXByb3V0ZTIgYnVpbGQKPiA+IHdpbGwgZmFpbCB3aGVuIGl0cyBtaXNzaW5nLgo+Cj4gWW91IGRl
c2NyaWJlIGV4YWN0bHkgdGhlIGlzc3VlIEkgaGl0IHdoaWxlIGJ1aWxkaW5nIGlwLWZ1bGwuIER1
cmluZwo+IGRldmVsb3BtZW50IEkgZG9uJ3QgaGF2ZSBhbnkgZXh0ZXJuYWwvdGhpcmQtcGFydHkg
ZmVlZHMgaW5zdGFsbGVkLiBBbmQKPiB0aGUgT3BlbldydCBiYXNlIHN5c3RlbSBzaG91bGRuJ3Qg
ZGVwZW5kIG9uIGV4dGVybmFsL3RoaXJkLXBhcnR5IGZlZWRzLgo+IFRoZXNlIGZlZWRzIGFyZSBh
biBhZGQgb24gYW5kIGJ5IG5vIG1lYW5zIGEgcmVxdWlyZW1lbnQuCj4KPiA+IEJlc2lkZXMsIHlv
dXIgY29tbWl0IGFjdHVhbGx5IHJlbW92ZXMgdGhpcwo+ID4gZGVwZW5kZW5jeS4gSWYgdGhpcyBp
cyBub3QgYSBsaXZpbmcgcHJvb2Ygb2YgdGhlIGZhY3VsdGF0aXZlIG5hdHVyZSBvZgo+ID4gdGhp
cyBkZXBlbmRlbmN5LCBJIGRvbid0IGtub3cgd2hhdCBlbHNlIGlzLgo+Cj4gU29ycnksIEkgZG9u
J3QgZ2V0IHdoYXQgeW91J3JlIHRyeWluZyB0byBzYXkuCj4KPiA+IE9uZSB3b3VsZCBhcmd1ZSB0
aGF0IGlwLWZ1bGwgc2hvdWxkIGNvcnJlc3BvbmQgdG8gdGhlIGZ1bGwgZmxlZGdlZAo+ID4gdmVy
c2lvbiBvZiB0aGUgcGFja2V0LiBJZiB0aGUgZGVwZW5kZW5jeSBvZiBhbiBleHRlcm5hbCBwYWNr
YWdlIGlzIHRoZQo+ID4gaXNzdWUsIGhvdyBhYm91dCBtYWtpbmcgYSBkaWZmZXJlbnQgdmFyaWFu
dCB3aXRoIEhBVkVfQ0FQIHN1cHBvcnQ/IEl0Cj4gPiBjb3VsZCBiZSBjYWxsZWQgaXAtcmVhbGx5
LWZ1bGwgKG9yIGlwLWZ1bGxlc3QpLgo+Cj4gVHJ5IHRvIGdldCBsaWJjYXAgaW50byB0aGUgT3Bl
bldydCBiYXNlIHN5c3RlbSBhbmQgZW5hYmxlIEhBVkVfQ0FQCj4gYWZ0ZXJ3YXJkcz8KSSdtIGlu
IGZhdm9yIG9mIHRoaXMgYXBwcm9hY2ggYXMgY3VycmVudGx5IGEgcGFydCBvZiB0aGUgaXAtZnVs
bApmdW5jdGlvbmFsaXR5IGlzIGJyb2tlbiBhbmQgSSBzZWUgaXAtZnVsbCBmb3Igbm93IGFuZCBp
biB0aGUgZnV0dXJlIGFzCmEgY29yZSBwYWNrYWdlCgpIYW5zCj4KPiBNYXRoaWFzCj4KPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IG9wZW53cnQtZGV2
ZWwgbWFpbGluZyBsaXN0Cj4gb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwo+IGh0dHBz
Oi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVs
IG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlz
dHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
