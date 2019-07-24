Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8058E7362E
	for <lists+openwrt-devel@lfdr.de>; Wed, 24 Jul 2019 19:56:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=emwLSHGeZj0iTuaygT1uDx1DsGQX+a1I+UuBQXXbpFI=; b=bwLkzA6Hqjv4r+
	cC+pnaOZURyPhNRHcBSg1K1j0chSUOU6jkkuaoI9uy1Q2iY5Kr/nvEN1oE1XxRNfJVEIjtsli4p7x
	6eb/NCaHBOLmYvlUvxPPvrBhccCmdizJAEXi/1U9J5Z7TwPpp8f0uw8k+6CaYWz1lYZ0P9JHQ1sMC
	q6vY1G6b16KpGtIkOwfLAS6X1p3eAgTlbhciSVqdcTX3vyjoOF6yntTIs4HFvLD9LbaOzA8+oDImo
	8S+uqiyJwnTwA39s09wboU2jsr8t6viXRWjfkLNSQD2kfe/rqIi6PGnSKoROdJV7pzeMbmow7Qw/Y
	4ODhRYJk7LVxx/7QKBpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqLV9-0003tj-MD; Wed, 24 Jul 2019 17:56:31 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqLUv-0003sS-0X
 for openwrt-devel@lists.openwrt.org; Wed, 24 Jul 2019 17:56:18 +0000
Received: by mail-ot1-x343.google.com with SMTP id l15so48761463otn.9
 for <openwrt-devel@lists.openwrt.org>; Wed, 24 Jul 2019 10:56:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=/FPz1+684YKciv2mMgD3rc11IOPK76zGwbLkvr+Qxns=;
 b=JNs+KndrivIyGJaJl3lMTaYp2kryMa+6VqSOK4FG848UPonE3f0/qg5i352WaeBoOj
 GDX8Z56Khr+hOBFaapZI+xTLVrRaLJ8oDKUl8dpKKgk9ARvWwr1r/w51q2qqgk7qPqWQ
 WRocC/SyN9/zA6YD07FyB46+W9jakjSLUn6TxFYsR9vcDpBwM0rznhUHJUG8MB0SuyJt
 jiGIlcuS6UJhOGf15amYyU78YYYMcyfcX2XCC3jcruz8thKynRy23KG54G33vPXuwf15
 jSnGwKvsP2JxHFn24jYQc2urDIPrGzZ7Bo4ceXPZpv578G9DGZd8Dh3sDdZWdGYA4TLw
 OxaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=/FPz1+684YKciv2mMgD3rc11IOPK76zGwbLkvr+Qxns=;
 b=U/Wa3MKIdhaMLWJ7MmkRuO4nNx5CMFkD0g4vckJHvXdIYaqHKXGQCo+qP/5fhDoc2e
 lNRxTxK5LVNvgYf9RT8IMrm7WAw0699bY2J9VvzF8scQ/1TUQMiIAkSvf9D1Wj5B/M4n
 CZVerh9bA48iYVmo5ehKT4owijpLq/peQcRLpsu+joD7m0FY26eIiHTCWs/2yfpO5LGd
 SmfrEhseLSaFXNlM7bs6LJGpp5pwpDUpAmqG7Ixn/FyBqqjy+Tdgl77XclIDiMa02Gmu
 kFOsh3leS/kzQhP+VUMvqDdqQ3QTEOi+do4qG4qmTLGeKVtx+Z2Fu2qBMcRHVy7F66ON
 fl5w==
X-Gm-Message-State: APjAAAXVDtgNVPEOsxsD1yKMNNX7f+TG/bvr7/OeB7nnFXBUSvq5yPhb
 pRYJabLOkwOw8unbfg/ocg8pwug019pH1J6NHwoqXtc3
X-Google-Smtp-Source: APXvYqx5hepxf4zUsw/56unrTnWB1ZWJfzS8rVcgVIs/XnnpjEmZZeReNzPI+arwmk2Rq21c2YZe6VcvQVCHdqv27DY=
X-Received: by 2002:a05:6830:117:: with SMTP id
 i23mr21467591otp.47.1563990975907; 
 Wed, 24 Jul 2019 10:56:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190724173231.9467-1-rosenp@gmail.com>
 <20190724175039.GC74752@meh.true.cz>
In-Reply-To: <20190724175039.GC74752@meh.true.cz>
From: Rosen Penev <rosenp@gmail.com>
Date: Wed, 24 Jul 2019 10:56:04 -0700
Message-ID: <CAKxU2N_fiDkEo_zTeifrmrVcViqpgk=rxAqcJWJ8YHTVXdkN8Q@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_105617_061066_54320D36 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] ubox: Run init script through shellcheck
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

T24gV2VkLCBKdWwgMjQsIDIwMTkgYXQgMTA6NTAgQU0gUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1
ZS5jej4gd3JvdGU6Cj4KPiBSb3NlbiBQZW5ldiA8cm9zZW5wQGdtYWlsLmNvbT4gWzIwMTktMDct
MjQgMTA6MzI6MzFdOgo+Cj4gPiBTQzIwMDQ6ICQvJHt9IGlzIHVubmVjZXNzYXJ5IG9uIGFyaXRo
bWV0aWMgdmFyaWFibGVzLgo+ID4gU0MyMTY2OiBQcmVmZXIgWyBwIF0gJiYgWyBxIF0gYXMgWyBw
IC1hIHEgXSBpcyBub3Qgd2VsbCBkZWZpbmVkLgo+Cj4gQ2FuIHlvdSBwbGVhc2UgcHJvdmlkZSBz
b21lIGRldGFpbHMsIHdoeSBzaG91bGQgd2UgY2FyZSBhYm91dCB0aGlzIHNoZWxsY2hlY2sKPiB3
YXJuaW5ncyA/Cj4KPiA+IC0gICAgIFBJRENPVU5UPSIkKCggJHtQSURDT1VOVH0gKyAxKSkiCj4g
PiArICAgICBQSURDT1VOVD0iJCgke1BJRENPVU5UfSArIDEpIgo+Cj4gWW91IG1heWJlIGZpeGVk
IHdhcm5pbmcsIGJ1dCBpbnRyb2R1Y2VkIGJ1ZzoKPgo+ICAkIFBJRENPVU5UPTIgZWNobyAiJCgk
e1BJRENPVU5UfSArIDEpIgo+ICAvYmluL2FzaDogMjogbm90IGZvdW5kCj4KPiBTbyB0aGF0IHNo
ZWxsY2hlY2sgdGhpbmd5IHByb2JhYmx5IHdhbnRlZDoKPgo+ICBQSURDT1VOVD0iJCgoUElEQ09V
TlQgKyAxKSkiCkNvcnJlY3QuIFdJbGwgc2VuZCBhIHYyLgo+Cj4gLS0geW5lenoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFp
bGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5v
cGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
