Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F05E2369
	for <lists+openwrt-devel@lfdr.de>; Wed, 23 Oct 2019 21:47:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3VQ3ShKZDBRNP45UTG7LkWWIdvYpe+/peDNf78HwRIU=; b=m/YtiDucfTVOq8
	8ggcbf2Srlzw+Oh8biFhzmgxf9YjP/DZdN7PTEmlU7k+WvStnEz5BHB/tTMmq3ZQImS7X9b8lbEwv
	RaGfvfL2aE/xAx/8V8MFq17Q4Z+Wr+4/wqHNdYDEdY83hpplkGvom/f2q5lVXKjwoPkRUBTWRnX6F
	x91xyO2Oupdjz0gnNkoXPDnW4PBY4/FhuVJbmK3tNFX1UwxPtsiMEA+Ta5/BJnnUIc1OuAgajVLPY
	lglC/8bhs36R8HKO1kUE6w65wCN31dYA92QgHzWtM07G+iTUKsXsQHzX3BodmeUeM8tjazyBXeSCG
	PThOx9ebC7Fk5i5LZ2oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNMav-0001Ui-LF; Wed, 23 Oct 2019 19:46:57 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNMao-0001UR-FY
 for openwrt-devel@lists.openwrt.org; Wed, 23 Oct 2019 19:46:52 +0000
Received: by mail-ot1-x341.google.com with SMTP id m19so18533315otp.1
 for <openwrt-devel@lists.openwrt.org>; Wed, 23 Oct 2019 12:46:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=w466x7C5pK/3zcPrDE2Tm4m9duv22h89vZR2I1jBVaY=;
 b=cxfTnHfx0qf820oLq4gUtMbD8ZuPHr/F8SO80RdZaYXhF1CeyPsHQzW2qrEhArfSP9
 07KdDTekfu8gvJklhbUOZyHfHYR0oWg63yhgWDjQCiI2kizkzmc7TOcNqhKTmtVY1bpW
 AxdeX2+NStm4ybNOzGwlEfzmvs6rhe413JiXIqUG9dbK30YYk84AtJj1QzN8CSUQOSK+
 DnHDU1nEIQcC4B6JmD4IowerSuCkRfrxzq31fIzpp2MVGvzlobcadW30gSkcFHJFPIPf
 zuTrHJApsF+qVAinRJUvTDoBmbPUQ4KbBc6h96jXM60bqrR2YbDROhf54vDTXvDDJ+wn
 5iwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=w466x7C5pK/3zcPrDE2Tm4m9duv22h89vZR2I1jBVaY=;
 b=MM0so0NIKyN/aGAYL5IU1OYxpa1PbPiWBMmUmPdxiFLWTKL5TFJ7z1sEnBOe5Momzr
 XSbPWyymWVEL30OrhwgOGfu4VGNt0D089xUi8U2lzkDtCXAL/ZvSK1Raw5/k4vO07Glc
 59rvqwbyKEAkg7dwN/xbkM8/tDuz3fJ/3DdfsX3lq+Pp0CJRF6ZkViTCeqVPVA5mKCo3
 hoy/h6+qEZ+d9/FMj46OJTuZiV3P/VssGnmhw3dPFnexpBv1199sNelYUUVOIM+ySVHH
 FxPPKJysaPFp2Btx1ED5L9Ff2kfSgjcxKiTiR3xeLyX75rfwam8AVfQ//t4nrGgbAyyd
 PZ0g==
X-Gm-Message-State: APjAAAV17BVf3SV2Ucek+b2K7zNe2Bz47PE+qDneNXGCdP9SQovN4CmV
 CpwW3sm9MRU1gPAzDUT1E71zOPUdmVhwC9U8HP9hhNoe
X-Google-Smtp-Source: APXvYqzNhArc62ki0UhpgIpp9d7uawDAzQtTmjDAuuyoNRXD0R+3rSeIQgODgXciO7rV8Xh3E+AjNGIeGN0hxYxTq4k=
X-Received: by 2002:a9d:72d7:: with SMTP id d23mr8327169otk.279.1571860008867; 
 Wed, 23 Oct 2019 12:46:48 -0700 (PDT)
MIME-Version: 1.0
References: <20191008010225.8822-1-rosenp@gmail.com>
 <944A6623-FEF1-4AC9-9A1E-B7D3566CF8A9@oranjevos.nl>
 <080086a1-b4dc-1ef3-2bc5-cafea5640421@gmail.com>
 <49128945-A6B3-49E0-BCD0-79A3018BE488@oranjevos.nl>
 <CAKxU2N_KTr6J61B2OesraKJiZZopnuYpbrV799_CebinnTaiAQ@mail.gmail.com>
 <20191022104319.GA22393@meh.true.cz>
In-Reply-To: <20191022104319.GA22393@meh.true.cz>
From: Rosen Penev <rosenp@gmail.com>
Date: Wed, 23 Oct 2019 12:46:36 -0700
Message-ID: <CAKxU2N_MCxfxMFGvDi=pkMN-+krPSYscB2+OEzsZpEfdspqm5Q@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_124650_544008_8A39C78B 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH 1/8] ncurses: add cygwin compatibility
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
Cc: Paul Oranje <por@oranjevos.nl>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gVHVlLCBPY3QgMjIsIDIwMTkgYXQgMzo0MyBBTSBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVl
LmN6PiB3cm90ZToKPgo+IFJvc2VuIFBlbmV2IDxyb3NlbnBAZ21haWwuY29tPiBbMjAxOS0xMC0x
NiAxMTozNjoyMl06Cj4KPiA+IFNvbWUsIGxpa2UgdGhlIGRvc2ZzdG9vbHMgYXJlIGFsc28gY29u
c2lzdGVuY3kgdXBkYXRlcy4KPgo+IElmIHlvdSdyZSB0YWxraW5nIGFib3V0IHBhdGNoIDMgb2Yg
OCAidG9vbHMvZG9zZnN0b29sczogUmVwbGFjZSBpY29udiBwYXRjaCB3aXRoCj4gdXBzdHJlYW0g
c3VibWlzc2lvbiIgdGhlbiBpdCBsb29rcyBsaWtlIHlvdXIgc3VnZ2VzdGVkIGZpeFsxXSB3YXMg
cmVwbGFjZWQgYnkKPiBtb3JlIGNvbXBocmVuc2l2ZSBmaXhbMl0gYW5kIHlvdSB3ZXJlIGhhcHB5
IHdpdGggdGhlIHJlc3VsdC4KPgo+IFNvIHBlcmhhcHMgYnVtcGluZyBkb3Nmc3Rvb2xzIHdvdWxk
IG1ha2UgbW9yZSBzZW5zZSBub3c/ClRoZXJlJ3Mgbm8gbmV3IHZlcnNpb24uIFRoYXQgY29tcHJl
aGVuc2l2ZSBmaXggaXMgYSBwYWluIHRvIGJhY2twb3J0Lgo+Cj4gMS4gaHR0cHM6Ly9naXRodWIu
Y29tL2Rvc2ZzdG9vbHMvZG9zZnN0b29scy9wdWxsLzEyNAo+IDIuIGh0dHBzOi8vZ2l0aHViLmNv
bS9kb3Nmc3Rvb2xzL2Rvc2ZzdG9vbHMvcHVsbC8xMjYKPgo+IC0tIHluZXp6CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxp
bmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3Bl
bndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
