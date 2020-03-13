Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA536185164
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Mar 2020 22:51:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UXOom6rQ6sLc4CjsU+9GwtJ1vl7a8jgIH9B6fyYJBZQ=; b=ersajlfTWMuv0L
	9WGnVl5BIlCOm+ckW19CuOUjsAWT6yDXbhPViBqXAFP+i3ekIrjtWWtdMBCeOc14CLvQajmjB/FBo
	PB1+8olFBX/dDr6w6CzPgjopb+j28usFLh0eJ7oiE+76zNPR6v8oZgJ+6SvY4KPYud5c9zKHZqp6X
	dImkEGJKAa9PnKrkO/fD5oa443J07p0nQnSMqgYewu9iekcRZVfOBTsqgPWdp3KxkKeCtfrOfI/xU
	8zRhygI6tBjSgYecsxd5WIhSw4my+tWiS9SijQK7wcKtTHEqSJXHnTwm+/12ZtnFBfTkblqYP328T
	TDy1zVKQo9BFrPoRQFkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCsD3-0006VT-1z; Fri, 13 Mar 2020 21:51:13 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCsCs-0006Uc-5F
 for openwrt-devel@lists.openwrt.org; Fri, 13 Mar 2020 21:51:04 +0000
Received: by mail-oi1-x244.google.com with SMTP id 13so2125883oiy.9
 for <openwrt-devel@lists.openwrt.org>; Fri, 13 Mar 2020 14:51:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Bfuc0wYG2TlrbZeD9j/vlYkkp3b6EoO4YbkrUocJ4IY=;
 b=gp05kxjMMDcRNfVCM8pOiJo0OmS843de51B8+9DgP7oXEskEAjV8UZMq/QoTbPlHSc
 RLBf4dor2ypESdZuf61Vfn3/JVCptNNmg45m5Ahk+ubMbsXnBx1LI99IkXlwyBseuRkB
 CCAemNnjLoHe2hFcFpGfpvaJB1rHlArV15R1FnQEJPG3VLkiiqcU13qcsbg7RZ73cdJj
 6MyX0XcbdCfjq2Xm/sg5wDB4pbRAPziwfWjML5RFOZ5KdlW08hRfKH+xhc1Vn7U074W4
 UZ+LwqLRD0BWylMs3sSMTBj6RNXvzW2Lc8N1wSveY997IO0lxbqPDpojJfY8LrQ++TfD
 l2xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Bfuc0wYG2TlrbZeD9j/vlYkkp3b6EoO4YbkrUocJ4IY=;
 b=lSupzv6CV5p9n1ZvIjvqB1XzwsbqDk0TlSCzbd3MqWJDq7nm8D0wLdXl+Q59NkDLfM
 TbIJheBvZjxmTLzuvXvt8sajQs2FrkXPaFtvKaRThGtqcglOc0fKG8PR3rsl1XzaGMzp
 CO6O2VxLEiJvZuhLEdarRyppC4Y4iSJYtc8W9E3rB317dUVPkC9kqMwKz1g2OW6htRZ8
 9DWEAwWoymCsLbjhKP7NmEOb7oQ9YUg4UcWTRYyFNf3cpAQYP1/4nOnJ5Qku8PuqH348
 K8U708YsPHgCyh3e0YOUxBxH/iTo4pw40W+IdIYJiQ27xoOdnI8HAwZm72J4qsPqUeGL
 7nAg==
X-Gm-Message-State: ANhLgQ3XziZvgZcnkquPxt6UC7XXqgV6aQ3xhakgB4vYtFnfg14FzcHQ
 FkC6eursoVsdEuLvLm/mRgZVSp7354rDXTrtxmg=
X-Google-Smtp-Source: ADFU+vuxtQLfsiI1jx1IvDhw3rox2qjGeHBGfSl4RMG7XFi7Pt/9RrFShLW54vFzWOpv66uAkzkwI01h5HOC3wQMlPc=
X-Received: by 2002:a54:4e13:: with SMTP id a19mr3635847oiy.108.1584136261088; 
 Fri, 13 Mar 2020 14:51:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200313032313.383555-1-luaraneda@gmail.com>
 <20200313032313.383555-2-luaraneda@gmail.com>
 <006501d5f92f$3a268600$ae739200$@adrianschmutzler.de>
 <20200313121336.GA56199@meh.true.cz>
 <006701d5f931$6532a7f0$2f97f7d0$@adrianschmutzler.de>
 <20200313123430.GC56199@meh.true.cz>
In-Reply-To: <20200313123430.GC56199@meh.true.cz>
From: Luis Araneda <luaraneda@gmail.com>
Date: Fri, 13 Mar 2020 18:50:47 -0300
Message-ID: <CAHbBuxrYNf_q4juGQAzSNAw-Z+YbCTPz30_5_GPK_=TTbZ2i2A@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_145102_226104_1D891027 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [luaraneda[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH 1/3] zynq: copy config from kernel 4.19
 to 5.4
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
Cc: openwrt-devel@lists.openwrt.org,
 Adrian Schmutzler <mail@adrianschmutzler.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGksCgpPbiBGcmksIE1hciAxMywgMjAyMCBhdCA5OjM0IEFNIFBldHIgxaB0ZXRpYXIgPHluZXp6
QHRydWUuY3o+IHdyb3RlOgo+Cj4gQWRyaWFuIFNjaG11dHpsZXIgPG1haWxAYWRyaWFuc2NobXV0
emxlci5kZT4gWzIwMjAtMDMtMTMgMTM6MTc6NDJdOgo+Cj4gPiBJJ20gYXdhcmUgb2YgdGhlIHR3
by1zdGVwIHByb2NlZHVyZSAoMS4gY29weSB3aXRob3V0IGNoYW5nZXMsIDIuIHJlZnJlc2gpLCBJ
Cj4gPiBqdXN0IHJlYWQgdGhlIG1lc3NhZ2UgaW4gYSB3YXkgdGhhdCB0aGUgY29uZmlnIHdhcyBy
ZWZyZXNoZWQgX2JlZm9yZV8gY29weWluZwo+ID4gaXQ/Cj4KPiBZZXAsIEx1aXMgZGlkIGV4YWN0
bHkgd2hhdCBoZSBkZXNjcmliZWQgaW4gaGlzIGNvbW1pdCBkZXNjcmlwdGlvbiwgaGUgcmVhbGx5
Cj4gcmVmcmVzaGVkIHRoZSA0LjE5IGNvbmZpZyBmaXJzdCAoSUlSQyB0d28gc3ltYm9scyByZWZy
ZXNoZWQ/KSBhbmQgY29waWVkIGl0IHRvCj4gNS40Lgo+Cj4gVGhhdCdzIHByb2JhYmx5IHRoZSBw
ZWRhbnRpYyB3YXksIGZpeGluZyBmaXJzdCA0LjE5IGNvbmZpZywgdGhlbiByZWZyZXNoIGl0Cj4g
Zm9yIDUuNCwgc28gdGhlIGRpZmYgZm9yIDUuNCBjb250YWlucyBvbmx5IHN5bWJvbHMgcmVsYXRl
ZCB0byA1LjQsIG5vdCB0byA0LjE5Cj4gY2xlYW51cC9yZWZyZXNoLgoKVGhhdCdzIGV4YWN0bHkg
d2hhdCBJIGRpZC4KTXkgYXBvbG9naWVzIGlmIGl0IGNhdXNlZCBhbnkgaW5jb252ZW5pZW5jZSwg
YnV0IEkgdGhvdWdodCB0aGF0IGFuCmFkZGl0aW9uYWwgY29tbWl0IGZvciBqdXN0IHR3byBzeW1i
b2xzIChvbmUgcmVtb3ZlZCwgb25lIGFkZGVkKSB3YXMKbm90IG5lY2Vzc2FyeS4KClBsZWFzZSBs
ZXQgbWUga25vdyBpZiB5b3Ugd2FudCBhIHJlZnJlc2ggY29tbWl0IGluIHRoZSBmdXR1cmUgKG5l
eHQKa2VybmVsIHZlcnNpb24/KSBldmVuIGlmIGl0IGp1c3QgYSBjb3VwbGUgb2Ygc3ltYm9scy4K
ClJlZ2FyZHMsCkx1aXMgQXJhbmVkYS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxA
bGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL29wZW53cnQtZGV2ZWwK
