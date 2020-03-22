Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B114118ECA0
	for <lists+openwrt-devel@lfdr.de>; Sun, 22 Mar 2020 22:22:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7oEvcRXF8/hyUyJlHTn/3WR/obsvfBSSHyJfd1R5EJA=; b=Cb9LBdu1tRH1zk
	6zUuTb935JgV2kagADrzAbrrDfA72sUY5DkGPs95h8bir/k04+ntSA5HQNlYgE9LVFcwqzvPBtrMy
	LgjKmcIhj83cwnMIDJx48hWqac5/ehHj7ckU4sBOCcu9GQEVQNdZ5JPjCXAPVp6E94fpNE0nEuq/x
	jM28PDHr4HweiJrCq9j3IVzBn8p0I8TVUskrURnqr9BsOLHNretMhGconUDM7oOFlWwV9nR0dOzCG
	iGqjANwanHrQTXU8Rjt5Gs9O3trZMzJ6Cgzmg1tq56Jim+8hRlR1IuY1pCDIrPncJQlORYoeWojto
	pfCQLAt4SXpZoh4EhPPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jG82m-0008Jc-Ok; Sun, 22 Mar 2020 21:22:04 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jG82f-0008JG-8J
 for openwrt-devel@lists.openwrt.org; Sun, 22 Mar 2020 21:21:58 +0000
Received: by mail-ot1-x344.google.com with SMTP id t28so11477367ott.5
 for <openwrt-devel@lists.openwrt.org>; Sun, 22 Mar 2020 14:21:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=93bQg/MLAm7rbsd75FQbFFxh9Uiovkd4c5RTn4YVIAo=;
 b=uQA26jxmfv1Ka0rnpuKcePj/1s76xXfvlehE86KsKad+Ghs67RecOh7yUOEUv5Ybt+
 9p1hj7kh36s15SObUE/R+aRAU2sVAVrLA5F9oTa8Q1zHW9AHdG+uPXIlosqSM7lpCW9w
 aC7RDyz90w8Vq2KrIjfBXsYHubXyrG1aclaSJT8Cerv4MqFcqRvHYyJsV1XQAOGYhF/G
 agV3QVYN/HSofeyF4YOV6C56SkDo0sKSHOJx/nxRezcq+bfrAdejEbA0eN0/fDb1WsQ9
 c30UQ2P6IEgNH9M7AGTtjRoh67K/utvlukoHcjeJJUvNVq7RUfosl5DrqZhetQbjUrMj
 TGAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=93bQg/MLAm7rbsd75FQbFFxh9Uiovkd4c5RTn4YVIAo=;
 b=VM12k/9hbthumAH9C0Qs67pOMiLEG8cyF3hsO60Op5MmCkVPHjidMyaQIYi6fPGyG2
 SelylWDwT55l0IE+N1CxtDcQckUfOefRmLjRXuEd75e+DFDMJerd4UNU9XwZW6uaxA+3
 6gHJcd4M0apYMYPBopr0rPgegGmmar3aSSI6wLMCQ7RqZPwdl1sD0To4zSLcpvzTrdUs
 UHM+xKd+xEgHdHnxdynD6s0cV4N6Z3pb6AIO9wkSbHfYZZ1+NxK9CC9yMlp4LHOuviNt
 I5xQ1EJco5USy9z8hojknZTpuknLOMGBL7WXU93mo6KLaYQ7EfH1xsjnpL4X70nMSf0I
 WLaA==
X-Gm-Message-State: ANhLgQ3t7qyVjgh3uw2o5+L1+mskyKqzABuA0BL9epj5iYWRPZDHJbmh
 60uwVjBeeVlVaweFyIJSCfsbDJ1EJ+cLbnjbPpg=
X-Google-Smtp-Source: ADFU+vtc7jkoJbPnhuTY706tLGsvY8EfP5CaDGMWVH7l0Cpa7Rclu3IYR0FWQILjELUGkktGbyKWNLSSt8eI3fuw8Mo=
X-Received: by 2002:a9d:850:: with SMTP id 74mr14713399oty.279.1584912116359; 
 Sun, 22 Mar 2020 14:21:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200320215939.1168125-1-rosenp@gmail.com>
 <CAJLcKsGgX9JA3kNGhRivrB_-bPwkJGkBibAgWnrQLXWZEFYoPw@mail.gmail.com>
 <20200322143510.GD85632@meh.true.cz>
In-Reply-To: <20200322143510.GD85632@meh.true.cz>
From: Rosen Penev <rosenp@gmail.com>
Date: Sun, 22 Mar 2020 14:21:45 -0700
Message-ID: <CAKxU2N-=aqHZJUwsp=L5KSEd+sqS7BS+idrZnwfqz_cjPz--eQ@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_142157_298540_D0E899F0 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] netifd: use the 64-bit version of
 clock_gettime
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
Cc: Hans Dedecker <dedeckeh@gmail.com>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gU3VuLCBNYXIgMjIsIDIwMjAgYXQgNzozNSBBTSBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVl
LmN6PiB3cm90ZToKPgo+IEhhbnMgRGVkZWNrZXIgPGRlZGVja2VoQGdtYWlsLmNvbT4gWzIwMjAt
MDMtMjIgMDk6Mzk6MzNdOgo+Cj4gPiA+IC0gICAgICAgaWYgKHN5c2NhbGwoX19OUl9jbG9ja19n
ZXR0aW1lLCBDTE9DS19NT05PVE9OSUMsICZ0cykgPT0gMCkKPiA+ID4gKyAgICAgICBpZiAoc3lz
Y2FsbChfX05SX2Nsb2NrX2dldHRpbWU2NCwgQ0xPQ0tfTU9OT1RPTklDLCAmdHMpID09IDApCj4g
PiA+ICAgICAgICAgICAgICAgICByZXR1cm4gdHMudHZfc2VjOwo+ID4gVGhpcyBicmVha3MgY29t
cGlsYXRpb24gb24gZ2xpYmMKPiA+Cj4gPiAvaG9tZS9kZWRlY2tlaC9XRFI0MzAwX2dsaWJjX3N0
YWdpbmcvYnVpbGRfZGlyL3RhcmdldC1taXBzXzI0a2NfZ2xpYmMvbmV0aWZkLTIwMjAtMDItMDUt
ZGJkZWY5Mzgvc3lzdGVtLWxpbnV4LmM6MjQyNDoxNDoKPiA+IGVycm9yOiAnX19OUl9jbG9ja19n
ZXR0aW1lNjQnIHVuZGVjbGFyZWQgKGZpcnN0IHVzZSBpbiB0aGlzIGZ1bmN0aW9uKTsKPiA+IGRp
ZCB5b3UgbWVhbiAnU1lTX2Nsb2NrX2dldHRpbWUnPwo+ID4gICBpZiAoc3lzY2FsbChfX05SX2Ns
b2NrX2dldHRpbWU2NCwgQ0xPQ0tfTU9OT1RPTklDLCAmdHMpID09IDApCj4gPiAgICAgICAgICAg
ICAgIF5+fn5+fn5+fn5+fn5+fn5+fn5+Cj4gPiAgICAgICAgICAgICAgIFNZU19jbG9ja19nZXR0
aW1lCj4KPiBUaGlzIGlzIGV4cGVjdGVkIGFzIHRoYXQgZ2xpYmMgdmVyc2lvbiBpcyBxdWl0ZSBv
bGQgYW5kIHNob3VsZCBiZSB1cGRhdGVkLgpNeSBwYXRjaCBrZWVwcyB0aGUgc3lzY2FsbCBiZWNh
dXNlIG9mIGEgY29tbWVudCBpbiBidXN5Ym94IG9yIHByb2NkIG9yCnNvbWV3aGVyZSBzYXlpbmcg
dGhhdCBpdCBhdm9pZHMgYSBkZXBlbmRlbmN5IG9uIGxpYnJ0LgoKbGlicnQgaXMgcGFydCBvZiBs
aWJjIGluIGJvdGggbXVzbCBhbmQgdUNsaWJjLW5nLCBidXQgbm90IGdsaWJjLgo+Cj4gLS0geW5l
enoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53
cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0
cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
