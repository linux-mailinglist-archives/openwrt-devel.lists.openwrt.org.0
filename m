Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A755D131C4F
	for <lists+openwrt-devel@lfdr.de>; Tue,  7 Jan 2020 00:27:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gtvcUFnHbJaTd0pwm20eEqPB25xrcwhmey9K1gtP/oI=; b=KOfW4+YeRo+POu
	JbvHtNs1E2r3x5vScpjgMgZ9fwlHqmSP7ChBEqR7q3fnj8jj/xfoxYtPCdwnsjQGupZmI+3dBcPih
	/srA8uzy1Bpu6LbP69TWDsbyI5pj1P1Qz9qOuLmoCDVzKyUiXz/Fis0b61jdX9fs7eCku8M6J6yQN
	Fv+TqkJRQG9nU0d/r+9EBmc8nS6l3RIR13SAVwou6bXVYDZ6OjJx1zL1/pZxg4u2ePLoF9edRcUOp
	B2z5q+nflS+uTQvAz9qB4waeOwh2jd/ADiWpCRSXAly9TbUDYJQUQ/O4hKi8DrI3mmf2AB+8rENXN
	bf0CJSJG7xKWGEv1ChzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iobmX-0007vY-7e; Mon, 06 Jan 2020 23:27:33 +0000
Received: from mail-il1-x132.google.com ([2607:f8b0:4864:20::132])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iobmN-0007vF-Rb
 for openwrt-devel@lists.openwrt.org; Mon, 06 Jan 2020 23:27:25 +0000
Received: by mail-il1-x132.google.com with SMTP id f10so44109391ils.8
 for <openwrt-devel@lists.openwrt.org>; Mon, 06 Jan 2020 15:27:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=3QjWXLGouK6A4kMW1XhBGnc8RLPukH02vLTKybRXakc=;
 b=t8IotfpCsd4TsmMWXgKrQFGmBIl/Zp1W+hAIm5I0A43ivrt8okupBnosly/DO8vmzV
 ycdUNMDtJoB2hYS5dQoaeopVMXbdaARW9rDkMDJspPimx9YXh/sJKl242j14sEES3N2k
 Bs55rN/vFuGslM0Sjm41R9Oe2kK5j/pTGauMhonTfVtB1D30J0dOJHckEOHj3gei2uLj
 wJ8fPavIktMwohsegGPMKTkbaCaUtwN3nYjTnhCiDVPE62Ngv7O3yqxMHIegow27Vcaw
 9ZnPx1fg/PsJacVhkYUnzdOROKzoJKplrlqNzj4PjzakKw3pAX6cPuxg8VH33xkRF7eF
 xKsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=3QjWXLGouK6A4kMW1XhBGnc8RLPukH02vLTKybRXakc=;
 b=CCypc+bmjH1t3awCR6Fc/9T78p9VpunbVtl21RMcHrNuhxeoHV3pyv4r6STL4d2OY6
 eU+pZMSp/uDxomkLtbzBgmgKLQupBr3XPvmMHxW2XHs+/gJK8cHndQfAR5EQXAl0YtEz
 18oTHqt5tvlMbFJacj8+xz4X7VddzaBZinc9sQxd5pkF1tyywToWeg+Tcer88CXZ892c
 lyTPPqOJ+9reIdzZfHU0PIBUn+4MAMOt1AilI6lFvZ6S0bvwn4kAfcpWaXkypNhX2YYb
 XRFYkJd5ld8O4p4iOqLG79Q+XgTL3V/aWHszWUxPOvRTwTgWM66PUdDzrf8BFYHEBk6v
 nt3A==
X-Gm-Message-State: APjAAAWcY0zFrwNkmKY+nY3/MsKwsI1pwWk6odmSBY4BVWQ4Q3fWVWgv
 X5T351tqw8ReGkOq9mATQ1XUz3/gIBDjyjfZS3E=
X-Google-Smtp-Source: APXvYqwvoHJ2LeQzO7Sx/3LbhyTxvHkYeZxpsZ+9qNMcqA3Id3y0dyIorvyzKd7bGhA+g2n7+hPLKkyNhunpSo+X7n8=
X-Received: by 2002:a92:5cc9:: with SMTP id d70mr86014158ilg.210.1578353240716; 
 Mon, 06 Jan 2020 15:27:20 -0800 (PST)
MIME-Version: 1.0
References: <a42e0ef1-b2b8-4f77-624d-2a8831fe073d@hauke-m.de>
 <419e6c10-b330-300b-7912-cc67de5a02fa@hauke-m.de>
 <CANoib0H92u+9pgO=TVdkoAjiZbdq78x5jA79SX-Y8Zu2+W8veQ@mail.gmail.com>
 <000001d5c4e7$444b4250$cce1c6f0$@adrianschmutzler.de>
In-Reply-To: <000001d5c4e7$444b4250$cce1c6f0$@adrianschmutzler.de>
From: Dmitry Tunin <hanipouspilot@gmail.com>
Date: Tue, 7 Jan 2020 02:27:09 +0300
Message-ID: <CANoib0G5abk_5FG3PKfNex5D64QaPS28ic5a23aDuvi6e+Frww@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_152723_923668_6A5E61A1 
X-CRM114-Status: UNSURE (   3.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:132 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hanipouspilot[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] OpenWrt 19.07 final timeline
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>, Jo-Philipp Wich <jow@openwrt.org>,
 LEDE Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

0LLRgiwgNyDRj9C90LIuIDIwMjAg0LMuINCyIDAyOjE2LCA8bWFpbEBhZHJpYW5zY2htdXR6bGVy
LmRlPjoKPgo+IG1ha2UgY2xlYW4/ICh3b3VsZCBiZSBuby4gNiBub3cgOi0pICkKCk15IGFwb2xv
Z2llcy4gV2UgYXJlIGluIHRoZSBtaWRkbGUgb2YgQ2hyaXN0bWFzIGhvbGlkYXlzIGhlcmUgOi0p
KQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3Blbndy
dC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRw
czovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
