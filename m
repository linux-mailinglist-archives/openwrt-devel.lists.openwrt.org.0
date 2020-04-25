Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F5021B8881
	for <lists+openwrt-devel@lfdr.de>; Sat, 25 Apr 2020 20:26:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:In-Reply-To:References:
	Message-Id:Date:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e78RfBDWHjRQcaGQAl6P4HH0r9bNGsSaHLW0lXRYmis=; b=DFd/GmoZ8WywLl
	nAExYR2TXZkYWVbRBE6x0z47fEQcsGy3nG4MzXYlhtdx6HYpms7KosoaK1vbrYlH/xuELpxXVCxuv
	87rYdQHoTfE5HDtqingeOjFNrzC8yLcahPKEzvhfMXPo4h3OJHZPpZzQdOR4HPY0/VoXK+RYBbcQk
	0B6js5zfdUU2treNMU7ScOwxHtvw1bGDteHItIeqtcUPYZUZ7fwGn/Tmh7gAcZOz8S2vRWD+pIdIR
	8nWzUwzCKwfrXhnS1m4FPa3dhQ5fs2Ulhob/f2yxNL5/hy52ISB8jokRLLMBfJn1KB58AXYPmHvm7
	Iktn/6kiFK0unmei8ZPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSPVp-0004ZX-4X; Sat, 25 Apr 2020 18:26:49 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSPVh-0004Yj-Sk
 for openwrt-devel@lists.openwrt.org; Sat, 25 Apr 2020 18:26:43 +0000
Received: by mail-pf1-x42b.google.com with SMTP id z1so4799124pfn.3
 for <openwrt-devel@lists.openwrt.org>; Sat, 25 Apr 2020 11:26:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=/bwdkLp58vAlnEIvW/6BLNt+jtZe2oAf/qiSs5gfL8s=;
 b=iiqMRna3z83brWQaltC5Ly7sabkFREW0LMvuwpfR+WEpKBvHwrgVwJoHMEB8rM/jPF
 vZeyTmWFBFJGpHcxZZ439VgmhNTq90u6nDMO03EWT1XYHNQQttCG6aAYmq2rNytLiRMY
 mrCTYKj8Kp6NtmOhkoSgxVQIM8v1DyCnS40L5mHufH6j6GDeBdSXqVlUCSnD43xtYISK
 9qSUTz7xIX6X87avFEZDCN4z/Jw7T99U1p8xZWdUAIaZgIStLHOjapvKGjAfn7t1larC
 72SJtd0eXM9VwXsP5ltMUmnUXzvZGL5gYa8WsOLEUbB7BEZKJa086/LjxC0zkAk7gBhI
 REZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=/bwdkLp58vAlnEIvW/6BLNt+jtZe2oAf/qiSs5gfL8s=;
 b=TQWHoqvfXRx5INIhGZiUrwT9byfEbGEDt0zqN2hsivNxyjEYL+2AdGgcVlXUrktBZZ
 Xt2j6TMZZy6cxja2Sh7LTLRa3/WrnxmgxJj+RnWb9JBuol8lB3ikH6qFEhk4U7fDRpPm
 ZB5GqcHFJT1dl1ynR/vPgwgoBc1EqAZ6gpKi//eD7xVYp+xJ9IzxHmLMtDVAB/gRWMHN
 7+5hSoktcRQz0mdPYwSeYp6qB4ddE3yvbL3a04XxwoVPi1QRFVw82H/AiZxw+krU1NkJ
 KUhKSrRxwzq5iyQwaY5ckVQQikGcSdC8etX3auteM9bi+LKsReQ8+8NEe29pfwC31a2h
 UOMA==
X-Gm-Message-State: AGi0PuajnkUN3BYTuT8cT4ywYC91gv4qew9iJaOd1nl5RLRK10ZEgzd6
 kL4sbigpH0t6cmfoezG40FQ=
X-Google-Smtp-Source: APiQypKu18RDB4J1KNN/BKcHyrL24Epkn2yQSIkIQC4bihZpIkfMG5w9mgpTG/bbdDXUvpjpBPAiqg==
X-Received: by 2002:a63:d30b:: with SMTP id b11mr1238335pgg.230.1587839200548; 
 Sat, 25 Apr 2020 11:26:40 -0700 (PDT)
Received: from [192.168.0.147] (76-14-109-232.rk.wavecable.com.
 [76.14.109.232])
 by smtp.gmail.com with ESMTPSA id n69sm7645870pjc.8.2020.04.25.11.26.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 25 Apr 2020 11:26:40 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Sat, 25 Apr 2020 11:26:38 -0700
Message-Id: <4158DB31-0030-48E4-A18B-39108957D9B4@gmail.com>
References: <f1152af1-19b3-5d9b-11e3-056c9f703e85@lucabert.de>
In-Reply-To: <f1152af1-19b3-5d9b-11e3-056c9f703e85@lucabert.de>
To: Luca Bertoncello <lucabert@lucabert.de>
X-Mailer: iPhone Mail (17C54)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_112641_952109_358EBF46 
X-CRM114-Status: GOOD (  14.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42b listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Upgrading LEDE to 19.07
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

Cgo+IE9uIEFwciAyNSwgMjAyMCwgYXQgMTE6MTYgQU0sIEx1Y2EgQmVydG9uY2VsbG8gPGx1Y2Fi
ZXJ0QGx1Y2FiZXJ0LmRlPiB3cm90ZToKPiAKPiDvu79BbSAyNS4wNC4yMDIwIHVtIDIwOjEyIHNj
aHJpZWIgQWxiZXJ0byBCdXJzaToKPiAKPiBIaQo+IAo+PiBUaGUgb25seSAiZGlzY29udGludWVk
IiBpcyB0aGUgIkF2YWlsYWJpbGl0eSIsIGFuZCB0aGF0IGp1c3QgbWVhbnMgaWYKPj4geW91IGNh
biBzdGlsbCBmaW5kIG9yIGJ1eSB0aGlzIGRldmljZSBuZXcgZnJvbSBzb21ld2hlcmUuCj4+IEl0
IGRvZXMgbm90IG1lYW4gYW55dGhpbmcgYWJvdXQgT3BlbldydCBzdXBwb3J0IG9mIHRoZSBkZXZp
Y2UuCj4+IFRoZSBkZXZpY2UgaXMgc3RpbGwgc3VwcG9ydGVkLgo+IAo+IE9LCj4gCj4+PiBJZiBJ
IHVuZGVzdGFuZCBjb3JyZWN0LCBJIGNhbiB1cGdyYWRlIHRvIDE5LjA3LCBidXQgaXQgd2lsbCBi
ZSB0aGUgbGFzdAo+Pj4gdmVyc2lvbiBJIGNhbiBnZXQsIGlzIGl0IHJpZ2h0Pwo+PiAKPj4gVGhl
IG1haW4gaXNzdWUgaXMgdGhlIHdhcm5pbmcgYWJvdXQgMzJNQiBvZiBSQU0geW91IHNlZSBvbiB0
aGUgdG9wIG9mCj4+IHRoYXQgcGFnZS4KPiAKPiBJIHJlYWQgaXQuLi4KPiBMVUNJIHNheXMsIG15
IGRldmljZSBoYXMgNjA2NjRLQiBSQU0sIGFuZCBJIGNhbiBzZWUgdGhlIHNhbWUgdmFsdWUKPiBj
aGVja2luZyAvcHJvYy9tZW1pbmZvCj4gCj4+IElmIHlvdXIgZGV2aWNlIGlzIEhXIFZlcnNpb24g
MSAod2hpdGUgY2FzZSwgYmxhY2sgYW50ZW5uYXMpIHRoZW4gaXQKPj4gbWlnaHQgbm90IGhhdmUg
ZW5vdWdoIFJBTSB0byBydW4gT3BlbldydC4KPiAKPiBJIGhhdmUgdGhpcyBkZXZpY2UsIHdoaXRl
IGNhcyBhbmQgdGhyZWUgYmxhY2sgYW50ZW5uYXMuLi4KPiBCdXQsIGFzIEkgc2F5ZCwgaXQgc2Vl
bXMgdG8gaGF2ZSB+NjBNQiBSQU0uLi4KSWYgaXQgaGFzIDY0TUIgUkFNLCBpdCBzaG91bGQgYmUg
ZmluZS4gVGhhdCBhbHNvIG1lYW5zIHRoaXMgaXMgbm90IGEgdjEuIFRoZSB2MSBpcyB0aGUgc3F1
YXJlL3JlY3Rhbmd1bGFyIG1vZGVsLgo+IAo+PiBZb3UgY2FuIHRyeSB1cGdyYWRpbmcgb3IgYXNr
aW5nIGluIHRoZSBmb3J1bXMgaWYgc29tZW9uZSBoYXMgYWxyZWFkeQo+PiBkb25lIHRoYXQuCj4g
Cj4gQ291bGQgeW91IHN1Z2dlc3QgbWUgYSBiZXR0ZXIgcGxhY2UgdG8gYXNrIHRoaXMgcXVlc3Rp
b24/Cj4gSSByZWFsbHkgdGhpbmssIHRoaXMgbGlzdCBpcyBub3QgdGhlIGFwcHJvcHJpYXRlIHBs
YWNlLi4uCj4gCj4gVGhhbmtzCj4gTHVjYSBCZXJ0b25jZWxsbwo+IChsdWNhYmVydEBsdWNhYmVy
dC5kZSkKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+IG9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cj4gb3BlbndydC1kZXZlbEBsaXN0cy5vcGVu
d3J0Lm9yZwo+IGh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVu
d3J0LWRldmVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQu
b3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRl
dmVsCg==
