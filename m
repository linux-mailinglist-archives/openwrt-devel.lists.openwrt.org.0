Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 409AC1563D5
	for <lists+openwrt-devel@lfdr.de>; Sat,  8 Feb 2020 11:32:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5JWW/CEtLa/o1rgEWz6RaeTbgr+amGTTZr03CoxLPo4=; b=MpwV9ufoE7oAa2
	WfaOTUp+Vt2CTYPKjqXGNvmrrPEcIiNabITsGcWUIqwyn5YDR6rz9uwPW9HyVpDcRLjkM1BCqvBy2
	uRgXAZvIxHKiDFiLStBAuygcFbI9OFksp3nxU3sq7wJOKenj7+fLUmdkNn1WcrwnulMVuy89IQvI9
	eXbejMM5CuyTLztfb6HfnedlvaAXpQdPpHZx9kD2xvL7eVGARf1AnBYtsW2Cl9IaDixxihHFR42XR
	CgpHFUSkY2I/BAzGbG8JrSARmTtgD91TvNp1LtUUQr3thwdos+icRG49JVKLETGsdI2jpO3/P7AYk
	t3qunmXpjXXVf39gBuug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0NPQ-0003Qv-27; Sat, 08 Feb 2020 10:32:20 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0NPJ-0003Qc-HQ
 for openwrt-devel@lists.openwrt.org; Sat, 08 Feb 2020 10:32:14 +0000
Received: by mail-ot1-x341.google.com with SMTP id p8so1752985oth.10
 for <openwrt-devel@lists.openwrt.org>; Sat, 08 Feb 2020 02:32:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=idaAYPuJBqxVcqdgHHBVOzBOy2mrn1IumwZ9Mbmf8wY=;
 b=KM1hVcHtjc9z0EMJuNHGmRciqh8PidSg55QSx6naIMW7C+/HcwEKV3CUk8E4A2+jGz
 umpaOiCejJI4HhVGMmrE1chlOZMMtxlDLTTbTlv0fjPrBn29fMWuAxrhRR2X6ibuJmM7
 1bTTDzE8PTknzLUK8r5NbXjb7m2vDxmRIEGAULgdlQGkpsfdmO+JEqrgSYvCth7XJB0e
 Mbt7vA3uAO/R7gP9Klmc7rkhcH1ekYeGvASKWxYzbUu3K3RJY2m22I0QHtV3yAjnzb89
 lbwNJxr74Gda8zr1Q67ODW0y26lljbTuCjp4uhw3LnNTgDlxl6I0bmfpRvKNTSbljYFG
 18fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=idaAYPuJBqxVcqdgHHBVOzBOy2mrn1IumwZ9Mbmf8wY=;
 b=tWSAJyxNo/LFdCEWq5IrYmrXqPUCh0h9NQY2k0boSyO4OtYBTq6Mb7QYiycPuFSAVp
 +B41KFnESV7GPriFTfKc7vyxrYYmKXgJrt21fNRTgjWlMjVoCpEu3cGzpLxTbyU5c3Lw
 hXTwVE2JoeiReq19CJto6L3Uz4PY0/7n1yf0Egz0t/cP8NqSL6cgX9ieS+VlwXM7Qx1A
 MOdWe9w0JnFQwbYMLA+ydKjChg5cANxpf9CgJd2IhlcZQ7zhhiBT4ZR4PcnjWxwSFMQr
 UJd8zfZkH22t1nog5RHtslvAKb2B0elODQ1WzVjSH0r/IUTcQHYITOp9Fts/SDJLfG/e
 yOtQ==
X-Gm-Message-State: APjAAAVU+aMwRjzfnhs6V8nClFC0W8FZkq085UBtiBhIXOIIkxv2EH56
 qhNU4e5N0OAUpWFZlOXdeCeUTf17E69BFbOGbso=
X-Google-Smtp-Source: APXvYqwhHuhRNbsGvxQ5Pl7shNhRCF+sF3AGuOhD69cqYNUzAcsEPykHh62v6/XzR8CcEoP8B2j9gCF3k224fC+DOrQ=
X-Received: by 2002:a9d:6a4f:: with SMTP id h15mr3003457otn.86.1581157932324; 
 Sat, 08 Feb 2020 02:32:12 -0800 (PST)
MIME-Version: 1.0
References: <CAJq09z63-O6xaxpBDLMdHF54Zivc8tmh1Y_AR_em5xtC+T9YCw@mail.gmail.com>
 <CAJq09z6y3GsSi3Efs817kuHkpp_M9C9gZt+GPg-hr3Ju7TfQzg@mail.gmail.com>
 <CAJsYDVLvPR8BRe=WGh0Op3a4dE+4CBkyC7_HeEyBcHiwOo=wBA@mail.gmail.com>
 <CAJq09z4GP8RJkusx9HtVNdgguiU_Mupbus=Ts12boro25uFVRQ@mail.gmail.com>
In-Reply-To: <CAJq09z4GP8RJkusx9HtVNdgguiU_Mupbus=Ts12boro25uFVRQ@mail.gmail.com>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Sat, 8 Feb 2020 18:32:01 +0800
Message-ID: <CAJsYDVLzCzer=ya-CeN3rLQuXxGUhuZb8umkxZeg14K110CE0Q@mail.gmail.com>
To: Luiz Angelo Daros de Luca <luizluca@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200208_023213_604559_050637C4 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gch981213[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gch981213[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Random data on rootfs_data for tp-wr2543nd-v1
 only with ath79
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sat, Feb 8, 2020 at 3:53 AM Luiz Angelo Daros de Luca
<luizluca@gmail.com> wrote:
>
> Thanks Chuanhong,
>
> That is exactly what introduced the issue. I double check with and without the patch and without it I got the random data from mtd

That might be a hardware bug then :(

I can't reproduce it on ar7240 and I don't have ar7242 routers.
You could try adding some delays in ath79-spi driver around those
bit-bang operations or reducing spi clock.

If none of these works we may have to use gpio bit-bang driver for ar7242
instead, which will make performance worse.
Or we could implement old flash read using spimem api as a workaround.

> I tried some random changes (without knowing what I'm really doing) like:
>
> compatible = "spansion,spi-nor";
> compatible = "spansion,s25sl064p", "spansion,m25p80", "jedec,spi-nor"
> m25p,fast-read;
>
> But I guess all those name variations will, in the end, mean just the same.
> "m25p,fast-read" does not fix the issue as well.

Correct. You could take a look at spi-nor driver and you'll find that these
compatible strings aren't really used.

Regards,
Chuanhong Guo

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
