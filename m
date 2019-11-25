Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C6DF109584
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 Nov 2019 23:33:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fOSk5hzR/xcPM5IESdbcjTsZBIor30Rc3T6O0IK9Jls=; b=gUouUbxUbtoMoB
	jmzioVeVgpIghCy/D46z320kdOOY3ckpsSjZP55BqbWo+tw8hCTTO3VugHeWDDeb/WpGWQb3xP+Vm
	b/G0sgFFluU/USczlWlpjS85xXyAk1X5x1UzDziBaSjziPwdz1jQGtXvBB+eDf7Tlc8FiUTO1yPlr
	m3QNGMdbLoO6vHjxRBTgU0iN6rDo8ISGn87QRlV6hBrhUXATKqdy19cWpM7ubH7sb57L1iTpC1oTr
	oRjxftmA8leARtFBQGol6hqRha8XunllVcAVrvEf+EhCLxG/ZxzdHW/5r9oC65tJoIemYoDx8Ogkf
	TDm5qzob35G2RHRrHO8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZMuj-0000SL-DJ; Mon, 25 Nov 2019 22:33:01 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZMuY-0000Rr-TX
 for openwrt-devel@lists.openwrt.org; Mon, 25 Nov 2019 22:32:52 +0000
Received: by mail-ot1-x342.google.com with SMTP id q23so8299201otn.0
 for <openwrt-devel@lists.openwrt.org>; Mon, 25 Nov 2019 14:32:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=xoXaeF1BUwWFOfbuC/OeiTjZ89GO7AhGd1ueljyB4Ek=;
 b=lxDU9+NazRFXa54Ke93FVGssdeeCXorqDpQ5it0qpFvtzVWSs/H80jGPsvtIOjkhzR
 YJF+a+lSLoxtB1zjY0SfA/JR5NzGE3u41Ef0n0gXMoLwGpos0Ov819rlITvDRrl3SYYE
 rYVqdJo3eSkoVQufbjLHMoD/ib9hragoZAI9sd7WULzKMxCwTYgtMYbLNYN3q0kvCAju
 8ndkUJ4qmGnmRTN3HQg4px4NRokr4tYOQ2TTPjXjH4DL7bYCKF6Z56ouar/S4RZV5eLc
 clfnqQLxl5dQyMvvEX4Z8/1USCTxY/QTw++ISM2qWnJT84thBIghHXHQCdmfIIRLqGH1
 2kXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=xoXaeF1BUwWFOfbuC/OeiTjZ89GO7AhGd1ueljyB4Ek=;
 b=XtapZDezN/BydG9B0D59A2btxbACqz62WVZdwtmdmKdZ5m315qFWbsHXkyhiPubO/v
 1hA0WZR2SSHIcFp3Jf0LmVjgViirPLTjQRAmlB7CQY9X8/Hvesw4EFb0KteunYBKhweE
 pINk/2+KgWL0KMKDKnB0KR9pItI69tupYQB8PNtI+OGLk4IsIGm4K8QR833/evBw7+QR
 2093ccJyvsI/ifjQFXQx2DLa7ugktmBTPC2kOXVFZk2wzt3S/nJw86sqtERh0dgO82c2
 z0cbfaNLlP0RaIilmq/Aj/SO69cRDzR64CsBb/S1HYpBeC44KsK2B4PD0O2F4L+68Slq
 QWKQ==
X-Gm-Message-State: APjAAAUuqBEYHkCW+2Vv5cKglE/7l/OsLjz6P3ltnrRaL0MfTDXFFFsc
 kI3ubkWHmjsc/lbyMPprhiziD8m/+sF+/0XMsnquGU3b
X-Google-Smtp-Source: APXvYqySw/Rd0EdxRcBGhCKiiE7hDxsGlyu6XY7zAlc10P+r1HUHvrL3Tj79Y55t3psD6cWbSDt6WUky5k2RwGpjk1Y=
X-Received: by 2002:a05:6830:1649:: with SMTP id
 h9mr83025otr.281.1574721169268; 
 Mon, 25 Nov 2019 14:32:49 -0800 (PST)
MIME-Version: 1.0
References: <20191125191340.5980-1-rosenp@gmail.com>
 <20191125191340.5980-3-rosenp@gmail.com>
 <871rtv22cq.fsf@miraculix.mork.no>
In-Reply-To: <871rtv22cq.fsf@miraculix.mork.no>
From: Rosen Penev <rosenp@gmail.com>
Date: Mon, 25 Nov 2019 14:32:38 -0800
Message-ID: <CAKxU2N_n50tb71sq9-g-T8iNdBN0hWvjtY95qugMH6t0Z-YOGA@mail.gmail.com>
To: =?UTF-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_143250_976223_A0FB9A58 
X-CRM114-Status: UNSURE (   5.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH 03/17] gen_mvebu_sdcard_img.sh: Use
 /bin/sh
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

T24gTW9uLCBOb3YgMjUsIDIwMTkgYXQgMTE6MTYgQU0gQmrDuHJuIE1vcmsgPGJqb3JuQG1vcmsu
bm8+IHdyb3RlOgo+Cj4gUm9zZW4gUGVuZXYgPHJvc2VucEBnbWFpbC5jb20+IHdyaXRlczoKPgo+
ID4gKyMhL2Jhc2gvc2gKPgo+IEVoLCB0aGF0J3Mgbm90IC9iaW4vc2gKV2hvb3BzLiBXaWxsIHJl
c2VuZC4KPgo+Cj4gQmrDuHJuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3Rz
Lm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9v
cGVud3J0LWRldmVsCg==
