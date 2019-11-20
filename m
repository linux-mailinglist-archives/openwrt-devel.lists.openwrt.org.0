Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A98103CDD
	for <lists+openwrt-devel@lfdr.de>; Wed, 20 Nov 2019 15:01:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f/6E9pU/kNxc6IECpnpu6Ly7clGTF8rPwI5ReFM0YoM=; b=Oosib2wdbOemdJ
	rFW8S54huUjbRiY6MriwQoqHwh8hhhVOFjCRzs4PAUm25n6vP1OSv1zaaPtMb8vq8Ux9vWFpqU1yu
	FWT8efFx42ZdzwFMQJNFeFne8F2i9hD/VElLX2TOK9jAfNdaRmalwby8thaUpYkcN6i3hQ6KlXIUF
	Bkl24CNlMsui/v0nsppaGhaYqYRtstlOysU/8D0rJ9HBNoQMlWernwR/Bq5VG59DoxujTJfO6zvhk
	9xscZ0dfVaEKuq8HaJsKDV7w0FdGcgt4P0JQ/KrFdFHj7dAnucJuFr6Q/s9a7rEEWDqozgPGRQA3h
	pYBlFayTMWrQ2KhT/jKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXQYB-0006Rx-EQ; Wed, 20 Nov 2019 14:01:43 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXQY5-0006RC-A9
 for openwrt-devel@lists.openwrt.org; Wed, 20 Nov 2019 14:01:38 +0000
Received: by mail-lf1-x142.google.com with SMTP id q28so6343784lfp.2
 for <openwrt-devel@lists.openwrt.org>; Wed, 20 Nov 2019 06:01:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=FDKfSoQb3pC/UXTlhClZ1QWfVbWdh3v5Uk2lmJx4lZM=;
 b=dru8WTqWpaiUH6mwGNmcrs0J/Hib+8kQUS9q4T6yEf8kQGFaIvy7FnSIqHAJMWSx7M
 T/ThRYeBwaa8Vp1lNWhyk+AR+23BmzlDicKp+c0FC/dMSbD65bUqO9foE3i5N8wHx7cO
 R3bDUgyZXN9eCwaYtEl4dhNvwSRoYBbOKqkhE89Cx1AgB1Fa/QYKjBX4aw3yk2UTKQvA
 3lsCqFUiVb4VHuONEwKIsfh+iE8n9ZrXvvWRsMo2i8tcUOjwHXRYAXLWtwWfqEm+kECC
 etyDV9FnkLcEKiBAr9s1cy+zAeduX4T84nc9QYmdLvTH6vPgCN6Wjz+C7w9AGv2x20kp
 32FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=FDKfSoQb3pC/UXTlhClZ1QWfVbWdh3v5Uk2lmJx4lZM=;
 b=Z5cEUKCbp2n7/yfZ0gF046rHSrMBtVfpt5dZDPNET/gMPiNdonN62xfr76dlQMKhAg
 adso9mYLFq8NnYcK32wt7w4sAEnBcuPQn5AgLs9uaDbf8SLVeH9tNzrPjUauABw3pExB
 HYfkCAkkCHLcrFuRf9JAaushEYjtk30xXBJRv3F2M4UOeaYyQod5ZRrkpqrirfSvVrI2
 zkW8XuMxShtIjOjuAXaktnYawuDOU0iktayj5Gwr3yhG0PpDSF8VCyYdLBz7JFRObvJc
 1kLuJ37roUiY15WN8LHZdKsB1u35wp1vKYAoOgHGBd8ZAp5bZOeFHKXaA6C6ycvjvubj
 nT8Q==
X-Gm-Message-State: APjAAAXjctJ7eDqOTibREXurHafhHiqbbhc56i8w5vJbllcdFNHAuDBN
 61+12A4Wta1BXiZm1W3fojbDUlDAUEOq/5NxaJdK+jP4
X-Google-Smtp-Source: APXvYqynkIqWGwBMa2Xd50ZdmRawuuLFbhxZQp+AEh/3f6szEwWMLjrydvm/Y6yRsh3+oi1yXcSMNrT4xdmcYTjIs1U=
X-Received: by 2002:ac2:5de4:: with SMTP id z4mr2807234lfq.17.1574258494320;
 Wed, 20 Nov 2019 06:01:34 -0800 (PST)
MIME-Version: 1.0
References: <20191120115926.23272-1-ynezz@true.cz>
 <20191120115926.23272-10-ynezz@true.cz>
 <CAECwjAio8nAN6ojR4r_7XGZyxuX-e=oYXN7WRkXtBOXy_yanTw@mail.gmail.com>
 <20191120133305.GD52387@meh.true.cz>
 <CAECwjAh5O9U=H=P7tZUVH1PBpWmyFcLCsp6GG315m5wafGYn_g@mail.gmail.com>
In-Reply-To: <CAECwjAh5O9U=H=P7tZUVH1PBpWmyFcLCsp6GG315m5wafGYn_g@mail.gmail.com>
From: Yousong Zhou <yszhou4tech@gmail.com>
Date: Wed, 20 Nov 2019 22:01:22 +0800
Message-ID: <CAECwjAgEnb7B8muu-az4teY-=B7TNXfp9jZJDtv203p6j7VsjA@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_060137_376555_DCC99E52 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH libubox 9/9] avl: guard against
 theoretical null pointer dereference
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

T24gV2VkLCAyMCBOb3YgMjAxOSBhdCAyMTo0NiwgWW91c29uZyBaaG91IDx5c3pob3U0dGVjaEBn
bWFpbC5jb20+IHdyb3RlOgo+Cj4gT24gV2VkLCAyMCBOb3YgMjAxOSBhdCAyMTozMywgUGV0ciDF
oHRldGlhciA8eW5lenpAdHJ1ZS5jej4gd3JvdGU6Cj4gPgo+ID4gWW91c29uZyBaaG91IDx5c3po
b3U0dGVjaEBnbWFpbC5jb20+IFsyMDE5LTExLTIwIDIwOjMzOjA2XToKPiA+Cj4gPiBIaSwKPiA+
Cj4gPiB0aGFua3MgZm9yIHJldmlldyEKPiA+Cj4gPiA+IFRoZSBmaXJzdCBjaGVjayAobm9kZS0+
bGVmdCA9PSBOVUxMICYmIG5vZGUtPnJpZ2h0ID09IE5VTEwpIGlmCj4gPiA+IG1hdGNoZWQsIHdp
bGwgcmV0dXJuLgo+ID4KPiA+IFlvdSBjYW4gc2VlIHRoZSBjb2RlIHBhdGggbGVhZGluZyB0byBu
dWxsIHBvaW50ZXIgZGVyZWZlcmVuY2UgZm9yIHlvdXJzZWxmWzFdLgo+ID4gSSB3aXNoLCB0aGF0
IGFuYWx5emVyIGNvdWxkIG91dHB1dCB0ZXN0IGNhc2UgZGlyZWN0bHkgOi0pIEkgd2FudGVkIHRv
IHdyaXRlCj4gPiB0ZXN0IGNhc2UgbXlzZWxmIGluIG9yZGVyIHRvIHZlcmlmeSBpdCwgYnV0IGl0
J3MgcXVpdGUgdGltZSBjb25zdW1pbmcgc28gSQo+ID4gcmF0aGVyIGRlY2lkZWQgdG8gbW92ZSBv
biB3aXRoIHRoaXMgc2ltcGxlIHNpbGVuY2VyLgo+ID4KPiA+IDEuIGh0dHBzOi8veW5lenouZ2l0
bGFiLmlvLy0vb3BlbndydC1saWJ1Ym94Ly0vam9icy8zNTUyMzAxNDEvYXJ0aWZhY3RzL2J1aWxk
L3NjYW4vMjAxOS0xMS0xOS0xNjM3MDgtMjAzLTEvaW5kZXguaHRtbAo+Cj4gVGhlIGdyYXBoIGlz
IHZlcnkgaW1wcmVzc2l2ZS4gIEl0IHJlcXVpcmVzIHRoZSBmaWRkbGVyIHRvIGZpcnN0IHBvaW50
Cj4gbm9kZS0+cGFyZW50IHRvIGEgc3RyYW5nZXIgd2hvc2UgbGVmdCBhbmQgcmlnaHQgY2hpbGRy
ZW4gYXJlIGJvdGggbm90Cj4gbm9kZSBpdHNlbGYgOykgIEluIHRoYXQgY2FzZSwgSSBwcmVmZXIg
dGhlIHByb2dyYW0ganVzdCBzZWdmYXVsdC4gIE5vCj4gd2F5IGl0IHNob3VsZCBjb250aW51ZSBv
ciByZWNvdmVyLgo+CgpCeSB0aGUgd2F5LCB3aWxsIGFzc2VydChub2RlLXBhcmVudCAhPSBOVUxM
KSBzdWZmaWNlIHRvIGluZm9ybSB0aGUKYW5hbHl6ZXIgdGhlIHVuZGVybHlpbmcgZGV0YWlscz8g
IElmIGl0IGRvZXMsIHdlIGNvdWxkIGFsc28gYXBwbHkgaXQKdG8gYjY0X2VuY29kZSgpLCBiNjRf
ZGVjb2RlKCkuCgogICAgICAgICAgICAgICAgeW91c29uZwoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3Bl
bndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21h
aWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
