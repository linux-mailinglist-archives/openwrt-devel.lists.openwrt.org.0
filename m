Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9994119245B
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Mar 2020 10:41:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QlgHwud0abR7sE8OCiRZqvN7f39Fbx68Oa9+QUDFL/I=; b=IOHowBW6CGic4D
	o5xZe6UDt+GSEOzNpsQXxMYE2507wL9OXtFmVnQi1bmHku0n47S8ZVGGSmIgRIcoj8Avpudghq6M2
	hKy59UNa4c9xGfRyY5Cro4AVIpF11MmNphP8JK8ijNHZM8vlcmc6V1lev90YDK8tySQd9k8CfBXT/
	wZSyoXW61RxmroZ4NyEF/hqugF9netaNMdPa3SIpGkggMN1sjbuig52k5F1hbaVaOZBrQBdr4qXxg
	msfPLjObZBNCMCMlawfJtO1oDyx427lZDesQyenShw6V8Pc6Ho+2tzawxeETNrLtaoh9pRYe6FMmK
	DTn4RdXfXzd4CTn6FkzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH2XG-0002a7-EP; Wed, 25 Mar 2020 09:41:18 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH2XA-0002Zq-2p
 for openwrt-devel@lists.openwrt.org; Wed, 25 Mar 2020 09:41:13 +0000
Received: by mail-qv1-xf41.google.com with SMTP id p60so693678qva.5
 for <openwrt-devel@lists.openwrt.org>; Wed, 25 Mar 2020 02:41:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Ua6ZqlS6TREsuKcoDl8r1be78sfVeG41VDU5eTczOJ0=;
 b=E0pGj2DDZvtuJW8L/9c2Z5j/S/9/AwVCANG08wgmSm5EMCeqnduGf5sbgu0LjWJuP5
 xY+lJkmPUXLxn0Ci3DLxrStAzWMuH9uawK56LR7d4Q1N4+Gh0wLAy+VHAwzYpTn4TmYG
 IEaAdKJ1N4j1Ca3Sioll/9LgbIy1sb17D7PcR32jWBAaLO3kjDF8RYWDPdeQdckmUZz9
 OAy0W5CuwIhG7Q3tvMiAYFEEykI8G92L0At1p8EipoDhnZBxCU6Zm2meRnNWtO+A9/mD
 dP12OCLnlU/jeFu8RT8lZ2PUvvwIuCJMFxvWT8rRdBWZuqKB1UgVbF98ecNOJzvy/Yw7
 RgBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Ua6ZqlS6TREsuKcoDl8r1be78sfVeG41VDU5eTczOJ0=;
 b=sTsq/Zuz93JgrSqeTG2jDa/5nOqqOyaqjzB/XfV0CmDyXCyhL5wfSvXAIXOV3keVJ0
 7ccWwmqwhikuylTUpURGM1BBaXJAUX8DKfl+T6TGoIvwB2xm4VU4ZydEovwf9i2/lzdt
 mdZRoG44QkTFQIpKRBJoIfsYRI2X7lCYsuvZ/V84Pz4dLnAHVmW+m7BCoO/RNfyCuMWK
 I8TaPZEVITfEoeYuemaiKADEQNMhRBFjiC2ZG0f2beEvUsZfGFOUbPlT0oCZJoJmB03R
 L4MQS0uBOLR9nTbwLWqQas9+MPYLGAn72ZWakRW1waDLaK1afa5PJB/CHgBum7OhP9Cv
 0iVQ==
X-Gm-Message-State: ANhLgQ2DyQ/1gD9Hr0ZvQe+U/i8GEDcoGgoh1RBrGWi7sUkNbPmgmpf1
 I64cuWv/9+vrx0wpb4BgcKVDiYjpTMuwxfOD7ok=
X-Google-Smtp-Source: ADFU+vvbB30wVGhCivK4+l8l1Sr8obIk3y5rjdOcKh0KD5FbLy4AZGbtKeWM3IzfWDvcnT4ceWhJO2YsM0tXxhf8HIw=
X-Received: by 2002:a0c:f647:: with SMTP id s7mr2304806qvm.4.1585129270210;
 Wed, 25 Mar 2020 02:41:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200325063049.870312-1-rosenp@gmail.com>
 <20200325060432.176224-1-rosenp@gmail.com>
 <20200325055619.8196-1-rosenp@gmail.com> <20200325082706.GC43730@meh.true.cz>
In-Reply-To: <20200325082706.GC43730@meh.true.cz>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Wed, 25 Mar 2020 10:40:59 +0100
Message-ID: <CAJLcKsH35zrOTh-g2vb-QF-+zXos6aFwrBt6LJSMbzt9p+0WgA@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_024112_127284_FA2E6BA4 
X-CRM114-Status: UNSURE (   8.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dedeckeh[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] netifd: fix compilation with musl 1.2.0
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>,
 Rosen Penev <rosenp@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gV2VkLCBNYXIgMjUsIDIwMjAgYXQgOToyNyBBTSBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVl
LmN6PiB3cm90ZToKPgo+IFJvc2VuIFBlbmV2IDxyb3NlbnBAZ21haWwuY29tPiBbMjAyMC0wMy0y
NCAyMjo1NjoxOV06Cj4KPiBIaSwKPgo+ID4gLS0tIGEvc3lzdGVtLWxpbnV4LmMKPiA+ICsrKyBi
L3N5c3RlbS1saW51eC5jCj4gPiBAQCAtNTksNiArNTksMTAgQEAKPiA+ICAjZGVmaW5lIElGQV9G
TEFHUyAoSUZBX01VTFRJQ0FTVCArIDEpCj4gPiAgI2VuZGlmCj4gPgo+ID4gKyNpZm5kZWYgX19O
Ul9jbG9ja19nZXR0aW1lCj4gPiArI2RlZmluZSBfX05SX2Nsb2NrX2dldHRpbWUgX19OUl9jbG9j
a19nZXR0aW1lNjQKPiA+ICsjZW5kaWYKPgo+IGNvdWxkIHlvdSBmaXggaXQgYnkgcmVtb3Zpbmcg
dGhhdCBwcm9iYWJseSBub3cgb2Jzb2xldGUgd29ya2Fyb3VuZCBieQo+IHJlcGxhY2luZyB0aGF0
IHN5c2NhbGwoKSB3aXRoIGRpcmVjdCBjbG9ja19nZXR0aW1lKCk/IFRoYW5rcyEKSSd2ZSB0aGUg
c2FtZSBvcGluaW9uOyBzbyArMQoKSGFucwo+Cj4gLS0geW5lenoKPgo+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gb3BlbndydC1kZXZlbCBtYWlsaW5n
IGxpc3QKPiBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCj4gaHR0cHM6Ly9saXN0cy5v
cGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBs
aXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
