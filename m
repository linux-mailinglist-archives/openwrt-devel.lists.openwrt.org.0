Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB1E2AFEB4
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Sep 2019 16:26:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pywY78P/0mMe1WDFmmDPtwCbwvKHnfFKbuttjW7DLug=; b=i7sHOqhledLY+p
	KUvLCl0lLs578oaFhka8zzPPVWEyhAwxSVE5n0pSL/k1AUbiD+uuDlHZs83vOSII4N0lTOpl4bfNP
	oBX5TWbhRr5OvWc+4p46PeUvLT8vQBKfdJ0roRnC4KLXbEEPj714PgXlLyWaVDcnuYqtyiWz1xyFW
	c5C5BxCDrpnBueESyf22F+kJC/MTEZ2hfNK8KY33CRVfX10b7o+CvyB8zqIfwsalsPH4++hRZ2yp9
	CpvsCdp7ZwsPjTi9Fczfnvu7FnbyJIhwIIXJrC0UaZElijaEJBzDzx6oG327A4P7dfZFYpHDa9lkd
	8N63TfNIX9zTMctOSxRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i83aD-0005SW-Bv; Wed, 11 Sep 2019 14:26:57 +0000
Received: from mail-yw1-xc2a.google.com ([2607:f8b0:4864:20::c2a])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i83a3-0005Ry-21
 for openwrt-devel@lists.openwrt.org; Wed, 11 Sep 2019 14:26:48 +0000
Received: by mail-yw1-xc2a.google.com with SMTP id d19so6005377ywa.0
 for <openwrt-devel@lists.openwrt.org>; Wed, 11 Sep 2019 07:26:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=XEn0dvzMavFFdK7lv6q86lkMNIXLmp0SXBGlgh1WvrI=;
 b=iuCH4FycjJ1pJfQaJgkbvjxSnKQM4O7RW0uY8lheZey4Y1184O8J4pgQAmbYsJdOhM
 xpVYXPZwzhqmEsji69skf27IczVpUVpqaJn0beHpoMu8++slmsiZ+aFt99YLe4i/z2y8
 X0Y61813Bho2zE9PGzlboyoMl1J9xmIZHazxRvnjQTlEzGhmlRPQQ84ES+6sW1oeeAGp
 /dwnWNz1YFm8fbyBzPf1Na+8CXyt6MsvxXRkrSMpcfzuFLExwYqKRzfuSgo7MnQt4+pM
 8YGqQVU0tAKyTpDyOo+1+3fj4mmAqK9jlV4KjZMOtv04qyv1HsGU0dXpU7kcwLIVG59J
 cgEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=XEn0dvzMavFFdK7lv6q86lkMNIXLmp0SXBGlgh1WvrI=;
 b=Zm17+A0KYGOtJZA33ja96/hdOH0b8GgtbkxokPkkGSeRgSxPpvzr0PkGNyGuTSQVSR
 sxuIe3ArZT2cOiU64SsJ6MBAaJEqr/3dO2NRblYL8hLw9kcf1Rm0yWNcmgN/HtNifZ0K
 Ie0BsdLFttVhGv3AM4+tEKoIlpB4uSLUhY4xYYWrmhVCFbljVuLDCLfApMifTYy0YrbH
 h5xqczrMySvmJzFEJ/s81rBvXxEMfXItJ65ChaGiuh0JkpiPjkf32vRqU9P8SIL4eeYB
 9aBDf/9uJhfIvZ0GnjpIAFGyb7mFei51h/DwQQxywfICxQjsYmm8AbKk2q/mdvCTqY47
 M7aA==
X-Gm-Message-State: APjAAAVaxVVdu8YjlWvvmj5r33hrM38WGgcH51VtonnqufwXunl00uJY
 n/nHVpNTW8QQVytmWqjTZ415GxJC9kQKiFKkFH0xGZL/
X-Google-Smtp-Source: APXvYqwT5usb68s1MpICgG8oQcy9jWB76FOFA9YJkQS4pAvcLqey/YB8zFeDlWLfWw4fAkNkeUrDyvKOm+uOqIsOckQ=
X-Received: by 2002:a81:af21:: with SMTP id n33mr24859658ywh.131.1568212004724; 
 Wed, 11 Sep 2019 07:26:44 -0700 (PDT)
MIME-Version: 1.0
References: <CACna6ryNB2PN2qwyctK7aTVnvhB+F6zTjGUMs=6vZ4XDeAyF6A@mail.gmail.com>
 <CACna6rzL6guvd-MGOUqXRP_nCeFxmOwjqxtcNoGhV0vNC701Wg@mail.gmail.com>
 <f72f164d-ef33-41be-2c17-c1d9e84b51a3@ironai.com>
 <CACna6ry6O1Y=mZzVncWiTjTXeX9fu3wDuBnFrboQJpgwOcyL-A@mail.gmail.com>
 <33f6f043-79ac-d6a4-8c44-a63c46d3c0d3@ironai.com>
In-Reply-To: <33f6f043-79ac-d6a4-8c44-a63c46d3c0d3@ironai.com>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 11 Sep 2019 16:26:33 +0200
Message-ID: <CACna6rwqiG9QHzK=2N43fPgUe56W-NnkWd14UuCLQEW_qK949Q@mail.gmail.com>
To: Vincent Wiemann <vincent.wiemann@ironai.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_072647_101829_32169B71 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c2a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
Subject: Re: [OpenWrt-Devel] sysupgrade: extending firmware validation
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

T24gV2VkLCAxMSBTZXAgMjAxOSBhdCAxNDo0NSwgVmluY2VudCBXaWVtYW5uCjx2aW5jZW50Lndp
ZW1hbm5AaXJvbmFpLmNvbT4gd3JvdGU6Cj4gT24gMTEuMDkuMTkgMTM6MDAsIFJhZmHFgiBNacWC
ZWNraSB3cm90ZToKPiA+IE9uIFdlZCwgMTEgU2VwIDIwMTkgYXQgMTI6MTksIFZpbmNlbnQgV2ll
bWFubgo+ID4gPHZpbmNlbnQud2llbWFubkBpcm9uYWkuY29tPiB3cm90ZToKPiA+PiBIaSBSYWZh
bCwKPiA+Pgo+ID4+IGJldHRlciBlcnJvciBtZXNzYWdlcyBmb3Igc3lzdXBncmFkZSBpcyBhIGdv
b2QgaWRlYS4KPiA+Cj4gPiBIaSAmIGxldCBtZSBhc2sgc2hvcnRseS4gRGlkIHlvdSBmb2xsb3cg
dGhlIHJlY2VudCBkZXZlbG9wbWVudD8gU2F3IG15Cj4gPiBpbXByb3ZlbWVudHMgJiBwZW5kaW5n
IHBhdGNoZXM/Cj4gPgo+Cj4gU29ycnksIEkgc2VlLi4uIFlvdXIgY2hhbmdlcyBsb29rIGdvb2Qu
Cj4gV2h5IGRpZCB5b3UgcmVwbHkgdG8geW91ciBvd24gIm91dGRhdGVkIiBlbWFpbD8KCkJlY2F1
c2UgdGhhdCB3YXMgb2J2aW91c2x5IHJlbGF0ZWQhCgoKPiBQbGVhc2UgcG9zdCBhbiB1cGRhdGUg
Zm9yIGtub3dpbmcgdGhlIGN1cnJlbnQgc3RhdGUgbmV4dCB0aW1lIHdoZW4KPiB5b3UgYnJlYWsg
dGhlIHRocmVhZCBjaGFpbi4gSXQgd2FzIG5vdCBjbGVhciB0aGF0IHlvdSd2ZSBhbHJlYWR5Cj4g
aW1wbGVtZW50ZWQgbW9zdCBvZiBpdC4KClJlYWRpbmcgdGhlIGZpcnN0IHNlbnRlbmNlIG9mIG15
IGUtbWFpbCB3b3VsZCBoZWxwLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0
cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8v
b3BlbndydC1kZXZlbAo=
