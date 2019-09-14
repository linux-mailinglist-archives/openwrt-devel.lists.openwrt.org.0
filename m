Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70488B2B17
	for <lists+openwrt-devel@lfdr.de>; Sat, 14 Sep 2019 13:28:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CnZndBYUThfr82+BGSSzNlAuk6X6/1NKS3KcpRnG380=; b=SXWs2FqtnwWkDI
	i48iksmAkl9uJAUfiihSgE5Ov7z5H4IKVl4BQizACh5CYg8Rscl6TFrhAZsaIbQN5Rttw56pQahiF
	HtAcGv2TyiUzBoimFhXaK3a6sFvoO90gJFWjvp8GTgeN0JKiZu+1pg6zxd53fkjCwZa1AUoLOmoA7
	7g0NjMI8AqHmPGRNHhT+3XBdEnj4LbMFa0SFMK26rP4awYO3sH8O7iL6MRGdt6olCR2t4qAwin7e5
	cFpyb6KDnb/D9fJJr/IFH/fxVSqEopKf6kp2Ba/9jXrytHTTOyeo9reDg0FAuNJCffiJLfLKrlUnm
	4XyXVz1vGwx4W6ubc21w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i96De-0000Sn-VO; Sat, 14 Sep 2019 11:27:58 +0000
Received: from mail-io1-xd35.google.com ([2607:f8b0:4864:20::d35])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i96DU-0000S2-6a
 for openwrt-devel@lists.openwrt.org; Sat, 14 Sep 2019 11:27:49 +0000
Received: by mail-io1-xd35.google.com with SMTP id f4so67678579ion.2
 for <openwrt-devel@lists.openwrt.org>; Sat, 14 Sep 2019 04:27:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=pXOZzawHWICrn0E78XQpDYKSacckWF6UUQlLh3V8AuU=;
 b=SJNYlq8lmeKrcAYeYXFTbPrCb1z8UCRpbFUZVXE0KWHfHs7XPsT9MLFH2ers4TsDWq
 VJJhBlR6vGoyPPy14bVSFjK/HOW/vZt2cQpH+yjdQmXoq5OmJoZOXcPRRMlcWqQod91G
 pM0jhdnB+SFRfbUJmBRBNQ+PmrGj/g03XWtowyepBI7/eBkLyv54jji3R/VBiSttzHBJ
 F/geWJM79uOzPtyNyeQI3dcceSzeaVRwNxUQX+gXZ6SHLphCp1fwpTozESd2Ph+HvSys
 1jmHtqJY0grH6vzX+s4vYdiTrYs9YI31sXsEl48mqIiWOk/CAHHE2lvvAmkWwKKzhZZP
 +M4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=pXOZzawHWICrn0E78XQpDYKSacckWF6UUQlLh3V8AuU=;
 b=HFWs4A82CFW3O2arilC7gvM0oSqD7ODL+eQ4y1Ae4xGMzy3fxvdCUhnDlutzLGEEeB
 8sl7C1nsFtBAi3dguvR1SshoADEXu5UgJqNFpcLoUMBhI/G5/AERB/OeruTvrW9SZBIG
 ZE5pYSvwXQNTOf/s3CZ9NGZFwmhHHXhuKB2wuc1u4ADx831HkteN0jeqVKtkYT0UrCcV
 FuviyxGSbLfDwt7QN2krdj0xsG6hHRZZCLGerC+CgjNC6SATFxAYn4+FTCl4xepG2SQ9
 T+iRogb+aIL7AXaJ7LwUXU5bX4fnFgVfoQATcoe+XiW6KEC5+7XoWh0/rg0usuIBpGIW
 lL1w==
X-Gm-Message-State: APjAAAVP5RWNGPMmPMEG3UNV6P5friTKzNVlBSubyfdhS8kTo4xHjCyU
 uNzWYRzC2KRGAzZnFGXfWj/BfdwOFW3Q9gc8MWw=
X-Google-Smtp-Source: APXvYqwk203NbSrwn5IZ8kcIrn1RWX1aj1Jt69MEXOl/+Em/GuwMeHRbsL9SiwlpTwrkqvzpyn4p1n7pZnmsMrMmmxw=
X-Received: by 2002:a5d:8908:: with SMTP id b8mr1295741ion.237.1568460463783; 
 Sat, 14 Sep 2019 04:27:43 -0700 (PDT)
MIME-Version: 1.0
References: <d62ee559-e78e-24e2-5753-ab473c91de23@marcant.net>
 <094d18fd-ac5a-3688-95b6-1391f39fe113@gmail.com>
 <CANoib0EcEre4MRk4-d6Nz2Cm0MmzEMdMXG1zoddyfvAS2xHekA@mail.gmail.com>
 <CANoib0GUo9zP7jEmg1dGUca+66HmLXGHVZwZwupq_6DUKmxBgA@mail.gmail.com>
In-Reply-To: <CANoib0GUo9zP7jEmg1dGUca+66HmLXGHVZwZwupq_6DUKmxBgA@mail.gmail.com>
From: Dmitry Tunin <hanipouspilot@gmail.com>
Date: Sat, 14 Sep 2019 14:27:31 +0300
Message-ID: <CANoib0FygYnxOuTcuE425gmPm4iYHKwKXLwcPMOBAyD2ZPwO2A@mail.gmail.com>
To: Magnus Kroken <mkroken@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190914_042748_268970_7A029125 
X-CRM114-Status: UNSURE (   7.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hanipouspilot[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d35 listed in]
 [list.dnswl.org]
Subject: Re: [OpenWrt-Devel] kernel: bump 4.19 to 4.19.72 broke ath79
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
 Andre Valentin <avalentin@marcant.net>,
 Koen Vandeputte <koen.vandeputte@ncentric.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

TWFnbnVzLAoKWW91IGFyZSAxMDAlIGNvcnJlY3QuIEZpeCBwb3RlbnRpYWxseSBtaXNzZWQgSVJR
IGhhbmRsaW5nIGR1cmluZwpkaXNwYXRjaCBoYXMgYW4gZXJyb3IuIEl0IHNob3VsZCBiZSBhcHBs
aWVkIG9ubHkgdG8gYXI3MXh4IHBsYXRmb3JtLgpJdCBzaG91bGQgYmUgZml4ZWQgb24gYm90aCBt
YXN0ZXIgYW5kIDE5LjA3IGJyYW5jaGVzLgoK0YHQsSwgMTQg0YHQtdC90YIuIDIwMTkg0LMuINCy
IDE0OjE1LCBEbWl0cnkgVHVuaW4gPGhhbmlwb3VzcGlsb3RAZ21haWwuY29tPjoKPgo+INGB0LEs
IDE0INGB0LXQvdGCLiAyMDE5INCzLiDQsiAxNDoxMiwgRG1pdHJ5IFR1bmluIDxoYW5pcG91c3Bp
bG90QGdtYWlsLmNvbT46Cj4gPgo+ID4gPiAyLiBJdCBtb2RpZmllcyBhcmNoL21pcHMvYXRoNzkv
aXJxLmMuIFRoZSBwYXRjaCB0aGF0IGZhaWxzIG9uIGF0aDc5LAo+ID4gPiAwMDI3LU1JUFMtYXRo
NzktZHJvcC1sZWdhY3ktSVJRLWNvZGUsIGRlbGV0ZXMgdGhpcyBmaWxlIGNvbXBsZXRlbHkKPiA+
ID4gKHdoaWNoIG5vdyBmYWlscywgYXMgdGhlIGZpbGUgY29udGVudCBpcyBjaGFuZ2VkIGJ5Cj4g
PiA+IDM0My1NSVBTLWF0aDc5LUZpeC1wb3RlbnRpYWxseS1taXNzZWQtSVJRLWhhbmRsaW5nLWR1
cmluLnBhdGNoKS4KPiA+Cj4gPiBJIHJlZnJlc2hlZCAwMDI3LU1JUFMtYXRoNzktZHJvcC1sZWdh
Y3ktSVJRLWNvZGUucGF0Y2ggYW5kIG5vdyBpdCBidWlsZHMgT0suCj4KPiBJbml0aWFsbHkgSSBk
b24ndCBzZWUgYSByZWFzb24gd2h5IHdlIG5lZWQgdG8gcmVtb3ZlIGlycS5jIGNvbXBsZXRlbHkK
PiBpdG4gdGhhdCBwYXRjaC4gSSB3YXMgZW5vdWdoIHRvIHJlbW92ZSBpcnEubyBmcm9tIE1ha2Vm
aWxlLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3Bl
bndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpo
dHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
