Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEAFF11442
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 May 2019 09:37:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MOC05Zl5xsKZ+oE7OujiRM0CRNJvjLf01F11CWF4TzQ=; b=eW8tUD1XvVv0FY
	oFiVEZT0AygY5p8P1QzLiM/2pvnmWhLZg0ivoK3RHgBftxMGcHjIWsDbqFfOPopi79eJBl1NVXgWe
	RDBzYLp+wisTA8Gi4I9S02ExLzgfB+rxv55Dd/Mg3dBjQJnpFvotOuHhtPMp5WJgtq1v93l+uCHLD
	CvI0VN290vfz7lv3Ke3litaNGLKcDTL7i5DC5JHErKA0WXGQ8cHqOSgLFRfUPSnVoB4dIEPbxbxN+
	ghDgEiAzWjmyavoluhXnBHUVx1lYyxFcChuRCUQMe6Wyt/F786C8OyrqP+MhegiuOj5AkzYuX7gea
	VaKTfcKASopcJ16Z8smg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM6HG-0002zu-TW; Thu, 02 May 2019 07:37:10 +0000
Received: from mail-yw1-xc30.google.com ([2607:f8b0:4864:20::c30])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM6H9-0002zZ-Sp
 for openwrt-devel@lists.openwrt.org; Thu, 02 May 2019 07:37:05 +0000
Received: by mail-yw1-xc30.google.com with SMTP id u14so893685ywe.1
 for <openwrt-devel@lists.openwrt.org>; Thu, 02 May 2019 00:37:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hKl4iXICq67NUBrkPPP6UgeNZm2ptuVB6GpzEE+S1KQ=;
 b=F/88IHD/C6qor7cwG5fbt6vWXwt7wd9weXpDWUjbQwPgh4j8xLuQDtRMfkPYYvCUPh
 tcx1qEyUxef2Hwi/q1irLUsG2PcFnI6n1lje48EqQ3uh83S3Ws4LoFXkH6wTRc/qYo8w
 4XMQD75lCfDUHz5DOGdB7yYKJisn+hzVjX/tuxDxjKrKDj/hJuAkcg6rXVMLXKVGqCFA
 CsxnNP28Rq/L0vGMb6m1qd2xGJUdC3L6xFYkeuZNsopiFccO4XaOThJ1kuiA0I50fpWh
 oGCOr5dNqtxJ2lVicHpcpyBw/YNMLqUVSFqaXaQqcQa6IaMwsOR4uehtLwPpdFNXVDeu
 koig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hKl4iXICq67NUBrkPPP6UgeNZm2ptuVB6GpzEE+S1KQ=;
 b=sYnlwpLeWEMfMipqv7IRoWcHhVY1aA7HJPiCFbMUL9dcy0cU9gi5iT70YYnG6g0rFc
 EoAe7zSTWdwyCxba3ZADWLdt5sn/1kQ+qc3YkVhyHgsEPUYGOWUHTQRNm42+eSqlvkDk
 /u9rpdDAoHj/vNwrd6ca2A3cR8xZTsTQH2bvmsvT3Rpm69aQARVFN/nK80LY0lzjozQR
 BEbtoUJ+4F9chTEb5swHUaD8x/smwk+BJpdSvZs5vxnXoUuV02lEAqdga+PY7sCcqkc3
 ijxKZ3XRNb8PbeUCBurbVMINTrUkCojH0oDohNsFtHoLXiOQERXyPDiB8Hl23M4LKCKa
 vIJA==
X-Gm-Message-State: APjAAAWXS5KxCNXS3c6Yl2kRVQnZtR1oAo60ucy2wjdMGkhIIQi+/f5y
 cHbfUh4DuI8efAoiD1ZrluatuPJSspa9pq3hLYQ=
X-Google-Smtp-Source: APXvYqzjf0p8UUJNnNQoBY2JgyWYhW6nXJ576+6np8RxalY86q4moPyOOORY4q54MEgH2B7188AyHWiV/rzTa1nT6vE=
X-Received: by 2002:a81:62c6:: with SMTP id w189mr1676791ywb.377.1556782622182; 
 Thu, 02 May 2019 00:37:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190430155842.12765-1-robimarko@gmail.com>
In-Reply-To: <20190430155842.12765-1-robimarko@gmail.com>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 2 May 2019 09:36:51 +0200
Message-ID: <CACna6rxZf8F0U10cqRNh-YoRx9zJinQyguiQgB9n=bNiUyD-iQ@mail.gmail.com>
To: Robert Marko <robimarko@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_003703_935224_B3FA352D 
X-CRM114-Status: UNSURE (   7.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c30 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
Subject: Re: [OpenWrt-Devel] [PATCH] kernel: iio: Fix BMP280 Auto probing
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Tue, 30 Apr 2019 at 17:58, Robert Marko <robimarko@gmail.com> wrote:
> Currently Auto probing for BMP/BME280 does not work because kernel
> module name in the call is not correct.
> Package name was used instead of kernel module name.
>
> Signed-off-by: Robert Marko <robimarko@gmail.com>

Looks correct, pushed, thanks!

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
