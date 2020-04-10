Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC8761A4B7F
	for <lists+openwrt-devel@lfdr.de>; Fri, 10 Apr 2020 23:10:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ne2CjJkE5jZIFSwvhQTIdwehV8ALtHq042mvSsmfe0U=; b=nw2V+9feVZQ+f8
	dEf/y7xwcwa+zncIwHyiTyW/zX12yNTHJMLcEKEvJrFjU9mFKwzjpHfETVjqBt8jRbdXW3aaTbaZo
	cWiQCWeU6psz2/YBymu/fCY3aMYwnsrdmOmuXUjagWwrNGK1hpRW99mlHW8WgwIqdshouO6tP2CLR
	+RQBpFLNjyVslrnQZj3qgRuTQAhk5HEMNN02umSqIEwL1RSm9H+ei9KswSYEydDEkiuRFbFd0zXDu
	GVPvjsbDqRtLcwZZRXMqfmpjuvgEC9vec5V02ewMr20bDtf6m8PfTjjCwUOZ684VUsnINsDJ5VAIs
	+gga8vOm7b/03i35pbsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jN0uk-0007ni-DH; Fri, 10 Apr 2020 21:10:14 +0000
Received: from mail-io1-xd30.google.com ([2607:f8b0:4864:20::d30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jN0uT-0007n8-Jc
 for openwrt-devel@lists.openwrt.org; Fri, 10 Apr 2020 21:09:59 +0000
Received: by mail-io1-xd30.google.com with SMTP id o127so3106475iof.0
 for <openwrt-devel@lists.openwrt.org>; Fri, 10 Apr 2020 14:09:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=UV/DKGkrOSCUnOgwXofnB+Y0VZg/a9lxx6NjTWoTLGM=;
 b=dqy9qcJZKWPFdfXXHc8WM5v/WH98LF/xAQhQaJYZiscWilL2Xl5IlfH3ItvlGu/blI
 r0ZFSw1fOTJgJEQT9jfIDkIUS07fXzOVxXrWmJr1tLTy2n4s/EksVR+idVvbo8DuSLYu
 tTz7szaYcxU1evV1SRAdsZoj7d2uGIEHfO/IG/dYpRpSY9kyRLdYFa6+QyogrDtEQsPs
 6yjidOYUst6ygepJV0+kaHFfgMx7+FnzVNphoWEmGyhQW4xsFlR+Waka/0gFgsxpO8Kw
 l1Z6jt3A/brA+3C923cI7WMsrdWYqEsLT2e6Kg4NOQHbKMxP1g67AtCqBk6b174ZKXX4
 CxQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=UV/DKGkrOSCUnOgwXofnB+Y0VZg/a9lxx6NjTWoTLGM=;
 b=TzyM4bHt2H3HQrxJmujMWJAGylqjgiOp08o7e5wWLDZPdDDBAPVCvAcGLKkw7RnQC/
 42MaZU9Tu5aJpkvzOvcpn07vHEQNpaRMSAzcHS2Ewx1/i9ZIosAIsUXrNhhHA0QyeicG
 y+Y8DxvUOLNU3ac0IMV58o1sAa9+nShuTSctOME4So2aawXsxSIcpL4gHIsnB4s+4knM
 LukRb9gOfM6A0f0COrPdDtqFNW7avKdAeP82M6Ui4rh9o/o4Ku/Dtw0BgmjR/+9Spum+
 t3t5NY7yj+rHGLxt4eTBLELNn3tPMOQa9W0/ClIStFhKM87lqV3/DM5dtyox93gF7UaV
 ztsw==
X-Gm-Message-State: AGi0PuZq9fNKH+5yv6izLXnszwla2MmAx4/px45zZDrAq53icJpPQqKD
 uP+lBGepPHD+SVYGgVOv5LqQuxU/rQy8Kyl0D4Tq+JWm
X-Google-Smtp-Source: APiQypLAyNOdoa7DvdAvmYgo1aU6eh52KTV3j1tgygcWv8lgx6Q8kv4S29vQItWN+QWxAF2JxzysFP73VnVwmLnlzRk=
X-Received: by 2002:a02:1444:: with SMTP id 65mr6555089jag.84.1586552995708;
 Fri, 10 Apr 2020 14:09:55 -0700 (PDT)
MIME-Version: 1.0
References: <7ec62c210cb8f78808f8225ebf33a60dee76a2ca.camel@flyn.org>
In-Reply-To: <7ec62c210cb8f78808f8225ebf33a60dee76a2ca.camel@flyn.org>
From: Etienne Champetier <champetier.etienne@gmail.com>
Date: Fri, 10 Apr 2020 17:09:44 -0400
Message-ID: <CAOdf3goPWgbrF7+db0OQfkM7gxuyieeCPRV=mwh4E+nC2hBpyQ@mail.gmail.com>
To: "W. Michael Petullo" <mike@flyn.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_140957_669756_CFDFBE56 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d30 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [champetier.etienne[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Java compiler
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

SGkgTWljaGFlbCwKCkxlIHZlbi4gMTAgYXZyLiAyMDIwIMOgIDE2OjQ4LCBXLiBNaWNoYWVsIFBl
dHVsbG8gPG1pa2VAZmx5bi5vcmc+IGEgw6ljcml0IDoKPgo+IEhhcyBhbnlvbmUgdHJpZWQgdG8g
YnVpbGQgYSBKYXZhIGNvbXBpbGVyIHBhY2thZ2UgZm9yIE9wZW5XcnQ/IEkgYW0KPiBpbnZlc3Rp
Z2F0aW5nIGRvaW5nIHRoaXMuIEkgc2VlIHRoZSBsYW5nL2phbXZtIEpWTSwgYnV0IG5vIGNvbXBp
bGVyCj4gYWtpbiB0byBkZXZlbC9nY2Mgb3IgbGFuZy9nb2xhbmcuIEkgaGF2ZSBwYWNrYWdlZCBh
IG51bWJlciBvZiB0aGluZ3MsCj4gYnV0IEkgc3VzcGVjdCB0aGlzIHdpbGwgYmUgYSBiaXQgbW9y
ZSBvZiBhIGNoYWxsZW5nZS4gSGVuY2UgbXkgcXVlc3Rpb24KPiBoZXJlLgoKRG8geW91IHdhbnQg
dGhlIEpESyBvbiB0aGUgcm91dGVyID8gb3IgdGhlIEpESyBpbiB0aGUgdG9vbGNoYWluIGFuZAoi
anVzdCIgdGhlIEpSRSBvbiB0aGUgcm91dGVyID8KRm9yIGJvdGggSkRLIGFuZCBKUkUgSSBkb24n
dCBrbm93IHdoYXQgYXJjaGl0ZWN0dXJlIGFyZSBvZmZpY2lhbGx5CnN1cHBvcnRlZCwgYnV0IHRo
YXQgd291bGQgYmUgdGhlIGZpcnN0IHRoaW5rIHRvIGNoZWNrLCBiZWNhdXNlCmRlYnVnZ2luZyBh
IEpJVCBjb21waWxlciBtaWdodCByZXF1aXJlIHNvbWUgd29yayA6UApHb29kIGx1Y2shCgo+Cj4g
VGhhbmsgeW91IQo+Cj4gLS0KPiBNaWtlCj4KPiA6d3EKPgo+Cj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBvcGVud3J0LWRldmVsIG1haWxpbmcgbGlz
dAo+IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKPiBodHRwczovL2xpc3RzLm9wZW53
cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QK
b3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3Jn
L21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
