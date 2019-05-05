Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6719314046
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 May 2019 16:36:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7nfk8e7jGNxnbXauaZi/0NHbf7Ie3W39IN8et2MhO6c=; b=QI6DqBldZ29fsm
	hs966eLK/kDb/O9EZcQMOMPIEviMhfdOYK8QAEk3w7HI/EM8e/sN24Vxy3R3/yoJvRxJGNQf0Absb
	m+rHPzr7vjtVyPIGYOeDKXG4dZZpmnxFkGIB2VeHZFhgLXhw614fBF6UqQpQMyhxTmS1YDJ/WvhuP
	7ResBe9upFuJVO/iE6tDAb/Qa+ZWmDWSBS8/emj1bxc/0D+VYzRkMiAC8ntmIzsq7Z4iDNLW7GFsO
	QoR9SMDGtUK76vJof3sbuzzDMxnL/z7gByyAAhtI0OmyqsE/7YqefnhUpbWbbVSctJJn5+HDCp8z5
	qIeB+6I7Tsw38rs7tJfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNIFF-00057e-K1; Sun, 05 May 2019 14:36:01 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNIF8-000573-Ig
 for openwrt-devel@lists.openwrt.org; Sun, 05 May 2019 14:35:56 +0000
Received: by mail-wm1-x344.google.com with SMTP id b10so12696613wmj.4
 for <openwrt-devel@lists.openwrt.org>; Sun, 05 May 2019 07:35:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GkstFaOZ4sua4c0B9V4z2wsHPWH+qAcmN5giKe7+62k=;
 b=bsWZr5xd0H6IUQc7l+S44W3ozuU80sls+PXtAm5eZwPq+/Rw+5iGlBKNHamC8BpgiI
 nHfQMnCQj8VYErNEFfZsduTiedlUB0fsx2f2ZxeBGuA6pR+F/V2uYEUcILxJoHpbHsqk
 MfMzIvZlBQF85qtQS/VtzeoYTtuCHwn4p6xg1DZeCGbF7GbqIZbUoNoWIm6uzGf4En0c
 WhnL9bzKgHXAJ4nHs8DaguYhmQmJ2uYNYyV3/dA803V0CJVokUW4ekasVm+kvc1wtMhb
 lvT/sdQmBhFPNUgmnVsk5pb/vAO+IrCx5MODs7aby+/peuXSCFWzFJjXlo24aWQESphK
 zlsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GkstFaOZ4sua4c0B9V4z2wsHPWH+qAcmN5giKe7+62k=;
 b=bHMCO/8Byfiw/OccMBABboZROoBo538xixa1Q4RsBy5tP8sufblyNKvEohyOL0wYW8
 kzZsXgPTgG8d9BihhssnHhJOnoBMFrg5VfexyrI+HLaUcvEWRFn0IpUhuKbYe4ldrcS8
 NvsK8Gx3vr8J5bLUkR2ha+KgUis2oSQs9dpCZ29bOB67pt5XveifYztejzfofB9+9Fim
 DfQdmXV5/+wf90/Y2A/WZOwLw6GLeE38eb1TpynHYbrBhkOMeDgUaitat82RcHwSjD4o
 E0EghzTH/0Yi+FdCbnDZNDHCJN6eAGl2I8fndiPT8M0RXuHPlAFCxUEB2tUi5/xXCJbN
 Co+A==
X-Gm-Message-State: APjAAAXlrSl5lODlad956uM1009wKLhobYDRdD7S+d4c1eyKk6RE+GOJ
 1TuEaT5dZ22sy7iVg8KvOdc=
X-Google-Smtp-Source: APXvYqyIyitfEHh+TayN7CYy69LJqsnzBdyNc8VN7/QGYdsJWC9za+eC3Ggjs2mfgIEirCZ8Zk5SbA==
X-Received: by 2002:a1c:7fce:: with SMTP id
 a197mr13905737wmd.134.1557066948662; 
 Sun, 05 May 2019 07:35:48 -0700 (PDT)
Received: from debian64.daheim (p5B0D7EA6.dip0.t-ipconnect.de. [91.13.126.166])
 by smtp.gmail.com with ESMTPSA id f3sm10748111wmb.1.2019.05.05.07.35.47
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 05 May 2019 07:35:47 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.92)
 (envelope-from <chunkeey@gmail.com>)
 id 1hNIEz-0008UW-MO; Sun, 05 May 2019 16:35:45 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: Klaus Kudielka <klaus.kudielka@gmail.com>
Date: Sun, 05 May 2019 16:35:45 +0200
Message-ID: <2643707.7QFsHqRdB7@debian64>
In-Reply-To: <39e13e97-a698-9e8a-72db-9cbf2a78298f@gmail.com>
References: <20190424191439.32298-1-klaus.kudielka@gmail.com>
 <97316402.u0ukOGWoMv@debian64>
 <39e13e97-a698-9e8a-72db-9cbf2a78298f@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_073554_643741_7C483B02 
X-CRM114-Status: GOOD (  29.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v2 1/2] base-files: improve
 lib/upgrade/common.sh
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
Cc: Petr =?utf-8?B?xaB0ZXRpYXI=?= <ynezz@true.cz>,
 openwrt-devel@lists.openwrt.org, Tomasz Maciej Nowak <tomek_n@o2.pl>,
 linus.walleij@linaro.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gU3VuZGF5LCBNYXkgNSwgMjAxOSAxMDoxMTo0MCBBTSBDRVNUIEtsYXVzIEt1ZGllbGthIHdy
b3RlOgo+IE9uIDA0LjA1LjE5IDE2OjUxLCBDaHJpc3RpYW4gTGFtcGFydGVyIHdyb3RlOgo+ID4g
T24gRnJpZGF5LCBNYXkgMywgMjAxOSA5OjM4OjQ2IFBNIENFU1QgUGV0ciDFoHRldGlhciB3cm90
ZToKPiA+PiBLbGF1cyBLdWRpZWxrYSA8a2xhdXMua3VkaWVsa2FAZ21haWwuY29tPiBbMjAxOS0w
NS0wMyAyMDoxNjozOV06Cj4gPj4KPiA+Pj4gTGV0IG1lIHJlbWluZCB5b3UgdGhhdCB0aGUgY29t
bW9uIG9uZSAqYWxvbmUqIGJyZWFrcyBzeXN1cGdyYWRlIGZvciB0aG9zZQo+ID4+PiBmb3VyIHRh
cmdldHMsIGFzIFRvbWFzeiBhbHJlYWR5IHBvaW50ZWQgb3V0IGVhcmxpZXIuCj4gPj4gV2VsbCwg
aG93IGNvdWxkIEkga25vdyB3aGF0IHdhcyB3cm9uZyB3aXRoIHYxIGlmIHlvdSBkaWRuJ3QgaW5j
bHVkZWQgdGhlCj4gPj4gY2hhbmdlcyBiZXR3ZWVuIHYxIC0+IHYyIGluIHlvdXIgdjIgcGF0Y2gg
Oi0pCj4gPj4KPiA+PiBBbnl3YXksIHRoYW5rcyBmb3IgdGhlIGV4cGxhbmF0aW9uLCBpdCB3YXNu
J3QgdGhhdCBtdWNoIGNsZWFyIHRvIG1lIGZyb20gdGhlCj4gPj4gY29tbWl0IG1lc3NhZ2UsIHNv
IGlmIHlvdSBkb24ndCBtaW5kLCBJJ2xsIGluY2x1ZGUgdGhlIGRldGFpbHMgdGhlcmUgYXMgd2Vs
bAo+ID4+IGluIG9yZGVyIHRvIGhlbHAgaXQgYmV0dGVyIHVuZGVyc3RhbmQgdG8gb3RoZXIgZm9s
a3MuCj4gPj4KPiA+PiBNZXJnZWQgaW50byBteSBzdGFnaW5nIHRyZWUgaHR0cHM6Ly9naXQub3Bl
bndydC5vcmcvP3A9b3BlbndydC9zdGFnaW5nL3luZXp6LmdpdDthPWNvbW1pdDtoPTE5NTE3OGY4
OGVlN2IzODE1ZjliZWE2NmEyNDU0Y2NmZGYyMTM1YTUKPiA+Pgo+ID4+PiBJbiBtb3JlIGRldGFp
bDoKPiA+Pj4KPiA+Pj4gVGhlIHJvb3Qgb2YgdGhlIHByb2JsZW0gaXMgdGhhdCB0aGUgKmV4aXN0
aW5nKiBleHBvcnRfYm9vdGRldmljZSBpbgo+ID4+PiAvbGliL3VwZ3JhZGUvY29tbW9uLnNoIGJl
aGF2ZXMgZGlmZmVyZW50bHksIGlmIHRoZSBrZXJuZWwgaXMgYm9vdGVkIHdpdGgKPiA+Pj4gcm9v
dD0vZGV2Ly4uLiwgb3IgaWYgaXQgaXMgYm9vdGVkIHdpdGggcm9vdD1QQVJUVVVJRD0uLi4KPiA+
Pj4KPiA+Pj4gSW4gdGhlIGZvcm1lciBjYXNlLCBpdCByZXBvcnRzIGJhY2sgbWFqb3IvbWlub3Ig
b2YgdGhlIHJvb3QgcGFydGl0aW9uLAo+ID4+PiBpbiB0aGUgbGF0dGVyIGNhc2UgaXQgcmVwb3J0
cyBiYWNrIG1ham9yL21pbm9yIG9mIHRoZSBjb21wbGV0ZSBib290IGRpc2suCj4gPj4+Cj4gPj4+
IFRoZSB0YXJnZXRzIG1lbnRpb25lZCBhYm92ZSBoYXZlIGFkZGVkIHdvcmthcm91bmRzIHRvIHRo
aXMgYmVoYXZpb3VyLCBieQo+ID4+PiBzcGVjaWZ5aW5nICpuZWdhdGl2ZSogaW5jcmVtZW50cyB0
byB0aGUgZXhwb3J0X3BhcnRkZXZpY2UgZnVuY3Rpb24uCj4gPj4+Cj4gPj4+IEFuZCB0aGVuIGNh
bWUgdGhlIG12ZWJ1IHRhcmdldCB0byB1c2UgZXhwb3J0X2Jvb3RkZXZpY2UgLwo+ID4+PiBleHBv
cnRfcGFydGRldmljZSBhcyB3ZWxsLiBOb3csIGRpZmZlcmVudCBzdWJ0YXJnZXRzIGJvb3QgZGlm
ZmVyZW50bHksCj4gPj4+IGFuZCB0aGUgd29ya2Fyb3VuZCB3b3VsZCBiZSBldmVuIG1vcmUgY29t
cGxleC4KPiA+Pj4KPiA+Pj4gSSB0aGluayBub3cgaXMgdGhlIHRpbWUgdG8gbWFrZSBleHBvcnRf
Ym9vdGRldmljZSBiZWhhdmUgY29uc2lzdGVudGx5LAo+ID4+PiBhbmQgdG8gcmVwb3J0IG1ham9y
L21pbm9yIG9mIHRoZSBib290IGRpc2ssIHBlcmlvZC4KPiA+IEp1c3QgYSBub3RlIGhlcmU6Cj4g
Pgo+ID4gVGhlIGV4cG9ydF9ib290ZGV2aWNlIHdpdGggaXQncyBQQVJUVVVJRC0wMiAvIHNkW2Et
el0yIGhhbmRsaW5nIGlzIG5vdCB0aGF0Cj4gPiBncmVhdC4gSWRlYWxseSB0aGUgZml4ZWQgcGFy
dGl0aW9uIHNob3VsZCBiZSBhdm9pZGVkIGFsdG9nZXRoZXIgaW4gZmF2b3VyIG9mCj4gPiBhIHVu
aXF1ZSBmaWxlc3lzdGVtIGxhYmVsIG9yIChsZXNzIGlkZWFsKSBhIGZpbGVzeXN0ZW0gVVVJRC4K
PiA+Cj4gPiBUcm91YmxlIGlzIHRoYXQgc3F1YXNoZnMgZG9lcyBub3Qgc3VwcG9ydCBlaXRoZXIu
IFNvIHRoYXQncyB3aGVyZSB0aGUgZml4ZWQKPiA+IFBBUlRVVUlEIGFuZCBzZFgvbW1jWCBkZXZp
Y2UgbmFtZXMgY29tZSBpbnRvIHBsYXkgYmVjYXVzZSBvdGhlcndpc2UgdGhlIGRldmljZXMKPiA+
IHdvdWxkbid0IGJvb3QuICBTYWRseSBJIHRoaW5rIGNoYW5nZXMgbGlrZSB0aGlzIHdpbGwgcHJv
YmFibHkgZ28gb24gdW50aWwKPiA+IGVpdGhlciBzcXVhc2hmcyBnZXRzIHRoZXNlIG1ldGFkYXRh
IGltYWdlIGZlYXR1cmVzIG9yIHNvbWV0aGluZyByZXBsYWNlcwo+ID4gc3F1YXNoZnMgdGhhdCBo
YXMgaXQuCj4gPgo+ID4+PiBDb25zZXF1ZW50bHksIHRob3NlIHRhcmdldHMsIHdoaWNoIGJvb3Qg
d2l0aCByb290PS9kZXYvLi4uICphbmQqIHVzZQo+ID4+PiBleHBvcnRfYm9vdGRldmljZSAvIGV4
cG9ydF9wYXJ0ZGV2aWNlLCBoYXZlIHRvIGJlIGFkYXB0ZWQgdG8gdXNlCj4gPj4+IHBvc2l0aXZl
IGluY3JlbWVudHMsIG90aGVyd2lzZSB0aGV5IGFyZSBicm9rZW4gYnkgdGhlIGNoYW5nZQo+ID4+
PiB0byBleHBvcnRfYm9vdGRldmljZS4KPiA+Pj4KPiA+Pj4gVGhlIHRhcmdldHMgYWZmZWN0ZWQg
d2VyZSBlYXN5IHRvIHNwb3Qgd2l0aCBmaW5kICYgZ3JlcC4KPiA+IFRydWUsIGl0IHdvdWxkIGhh
dmUgYmVlbiBncmVhdCBpZiB0aGUgY29tbWl0IG1lc3NhZ2UgaW5jbHVkZWQgdGhhdAo+ID4gZXhw
b3J0X2Jvb3RkZXZpY2Ugbm93IGNvbnNpc3Rlbmx5IHdvcmtzIG9uIHRob3NlIGRldmljZXMgd2hl
biB0aGUKPiA+IHJvb3Q9IGluIHRoZSBjbWRsaW5lIG1hdGNoZXMgdGhhdCBQQVJUVVVJRC0wMiwg
c2RbYS16XTIgb3IgbW1jYmxrWzAtOV1wMgo+ID4gYW5kIG5vdGhpbmcgZWxzZS4KPiA+Cj4gPiBC
ZWNhdXNlIHRoZXJlIGFyZSBzdGlsbCBhIGZldyBkZXZpY2VzIChJIHRoaW5rIEdlbWluaSBESVIt
Njg1LCBESVItMzEzCj4gPiBhbmQgU1EyMDEsIGFuZCBhIEtpcmt3b29kIEdvRmxleCBIb21lKSB0
aGF0IGhhdmUgdGhlIHJvb3Q9IG9uIHNkYTEgb3IKPiA+IHNkYTQgYW5kIGNvdWxkIGJlIGNvbnZl
cnRlZCB0byB1c2UgdGhlIGV4cG9ydF9ib290ZGV2aWNlIGZvciBzeXN1cGdyYWRlLgo+ID4KPiA+
IEJ1dCBhcyBvZiB5ZXQsIEkgZG9uJ3Qgc2VlIHRoYXQgYW55IG9mIHRoZXNlIGRldmljZXMgaGF2
ZSBzeXN1cGdyYWRlIHN1cHBvcnQuCj4gPiBTbyB5b3VyIHByb3Bvc2VkIHBhdGNoIGlzIGZpbmUs
IHVubGVzcyB5b3Ugd2FudCB0byBjb21lIHVwIHdpdGggYSBzb2x1dGlvbgo+ID4gdGhhdCBjYW4g
ZGVhbCB3aXRoIHRoZSBvZGQtYmFsbHMuLiBCZWNhdXNlIHRoYXQgd291bGQgYmUgYXdlc29tZSEK
PiBXZWxsLCB0aGUgcHJpbWFyeSBnb2FsIG9mIHRoaXMgcGF0Y2ggd2FzIChhbmQgc3RpbGwgaXMp
IHRvIGZpeCBzeXN1cGdyYWRlCj4gZm9yIFR1cnJpcyBPbW5pYSwgd2l0aG91dCBpbnZlbnRpbmcg
eWV0IGFub3RoZXIgd29ya2Fyb3VuZCBmb3IgdGhlIHJhdGhlcgo+IHNjaGl6b3BocmVuaWMgYmVo
YXZpb3VyLgpXZWxsLCBmcm9tIGFmYXIgaXQgcmVhbGx5IGxvb2tzIGxpa2UgeW91ciBwYXRjaCBy
ZXBsYWNlcyAqY29tbW9uKi5zaCBjb2RlCnRoYXQgd29ya3MgZm9yIGV2ZXJ5ICpnZW5lcmljKiBj
bWRsaW5lIHJvb3Q9L2Rldi8qIHdpdGggc29tZXRoaW5nIHRoYXQKb25seSBjb25zaWRlcnMgcm9v
dD0vZGV2L21tY2Jsa1swLTldcDJ8L2Rldi9zZFthLXpdMiAuCgpEb24ndCB5b3Ugc2VlIHdoeSB0
aGlzIGEgcG9pbnQgb2YgY29udGVudGlvbj8KCj4gUGVyc29uYWxseSBJIHdvdWxkIHByZXBhcmUg
Zm9yIHBvdGVudGlhbCBmdXR1cmUgdXNlIGNhc2VzIGluIGEgc2VwYXJhdGUKPiBwYXRjaC4gVG8g
ZGVhbCB3aXRoIG5vbi1zdGFuZGFyZCBwYXJ0aXRpb24gbGF5b3V0cywgaXQgY291bGQgYmUgYXMg
c2ltcGxlCj4gYXMgcmVwbGFjaW5nIHRoZSB0cmFpbGluZyAiMiIgd2l0aCAiWzEtNF0iIGluIHRo
ZSBzaXggcGF0dGVybnMgb2YgdGhlCj4gJHJvb3RwYXJ0IGNhc2Ugc3RhdGVtZW50Li4uIGlmIHRo
aXMgaXMgd2hhdCB5b3UgbWVhbj8KSSB0aGluayBpdCdzIHZlcnkgZGV2aWNlIHNwZWNpZmljeSB0
byBzYXkgdGhhdCB0aGUgc2Vjb25kIHBhcnRpdGlvbiBpcyB0aGUKcm9vdCBwYXJ0aXRpb24uIElk
ZWFsbHksIHRoZSBhIHV1aWQgb3IgZnMgbGFiZWwgc2hvdWxkIGJlIHVzZWQgYXMgcm9vdD0uCkJ1
dCBpbiBjYXNlIG9mIHNxdWFzaGZzIGl0J3Mgbm90IHBvc3NpYmxlLCBvbmx5IFBBUlRVVUlEIG9y
IGRldmljZSBmaWxlCm5hbWUgd29ya3MuCgpDaGVlcnMsCkNocmlzdGlhbgoKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxp
bmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3Bl
bndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
