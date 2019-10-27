Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54ADDE62B6
	for <lists+openwrt-devel@lfdr.de>; Sun, 27 Oct 2019 14:45:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yhOjgJdjoN5+0LBOAQUoqC/Wp+2GCGp5GWWiGyicZzg=; b=PgYCmQjlPkNzip
	OD4ukH1kGJLvP7UwtDME+b+dzAzYTd6kLJNzLOcQbq2U5FFUkrbYhgxCXz2KdvMilS6dl8ZTSh7Py
	+GoIjz1oOKRHkGV1lOA6Q/MHgOgLw27VpjyO7iD9PCgN0XMrOVW07TWWT7UZXGVGHaH29F+SAYIcD
	2D+LpcF4nGhUhsRc6ky7PQxzFGa6b0nZNjuVTAGeizZwOivsb8g3Dty//hWNEY1O9lK8IB5T0A4AV
	05UFmBwYuzqL/BpHYV6v1b4BSpb7nastZ/5ycK8PH2hyqJ2DKI7s6DDd3yPjZMbTdlWkgX8uQDwBo
	9xsnCRH4y/g8ZrsbEBHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOir4-0006wd-UC; Sun, 27 Oct 2019 13:45:14 +0000
Received: from mail-yb1-xb41.google.com ([2607:f8b0:4864:20::b41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOiqv-0006JC-Bc
 for openwrt-devel@lists.openwrt.org; Sun, 27 Oct 2019 13:45:06 +0000
Received: by mail-yb1-xb41.google.com with SMTP id z125so3122965ybc.4
 for <openwrt-devel@lists.openwrt.org>; Sun, 27 Oct 2019 06:45:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DUjQmW4jMmAeZRAPHomKkhPDD6B29tsTm2U2vj8GdwM=;
 b=rQ5t7hiO+W9uKd2H+2UT00vpPGpXqZA2VB+oq9jB6P4Zny5aHeJSV+/iJKh942Fo1X
 TpA6W8tJGx4/PwKFF3ZfmYGmqIwG2zkJuEgkLK7+R9eL4kxy8ww7yHefeq4vGWnYaS2I
 eH7vzXxiidN+aYTPphxaImMDde5YngKQgdEHJLF0tKGiBLh/EoXwEIpVXN0UA62Cpacm
 V1iTkC7XLlvUz9DMqqyvVY2gXEFa8p6aA+s7Ub21Y3AKlBUDpHKXhOCCEwHNEL1Rvdyg
 Vew9fMtqf+6xDCofoK0yjZLzF6cxLKMWw9pwWPqjR/E9YZO0CTCjLw8IG631abhOY57Z
 fiMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DUjQmW4jMmAeZRAPHomKkhPDD6B29tsTm2U2vj8GdwM=;
 b=frSYXuB6RI7khqCMykhFouiyQyLQIdinQow7LmC8/UDn4G2mR24ilCjsNRqi6Lx2fL
 gWKCfLWn0S54J7Ee1C7lYpzgaXTZhj0gufGhqijrox8R8AIqFnyYyjJIT+VHAEHz/0Tq
 65s6hMjGxMqdYXbfBPX3+bMrHzlFnQa48NvlS/auiP56aCqtFV/EV5nmA8D7lsH6P+Cy
 +cf/PgQZP0ARXMbNDRZuB3fej2poI0RVsbjbjaFPlEfMgiaSidMcdRAiebLeS4NN89tq
 hE19soWP5QXez6F8fJqymfyVwtR+OpuT7GwyURoNq9/w7V041uB1zBiqVOPBg6cWQ7IJ
 C8wA==
X-Gm-Message-State: APjAAAVaKDUZ65iKhd/U6ycFZ5NaszAfBwkUbUkd3TEhK4uGIoHZTpdl
 W/lYP54BF6qFNsGaL1kmrkhPpcmzsIjUZ+sYiL0=
X-Google-Smtp-Source: APXvYqwT0/Yd1J1vihp7rDRVQMRUh5QKjsCOcHSp7D0IgKjYvevDyXDx2iC3yAMYW+zSdHcX00RA3ZuQ+QgBDfKwLvs=
X-Received: by 2002:a25:80c1:: with SMTP id c1mr11129164ybm.10.1572183903685; 
 Sun, 27 Oct 2019 06:45:03 -0700 (PDT)
MIME-Version: 1.0
References: <EFB73C49-4DE9-4DF7-93FF-72318E9C4526@temperednetworks.com>
In-Reply-To: <EFB73C49-4DE9-4DF7-93FF-72318E9C4526@temperednetworks.com>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 27 Oct 2019 14:44:52 +0100
Message-ID: <CACna6rz3TqbmX+7mmyfNM=VmW8DTJhyhAuPMY8+iL3+-uwpS7Q@mail.gmail.com>
To: Dustin Lundquist <D.Lundquist@temperednetworks.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_064505_437652_E194831E 
X-CRM114-Status: GOOD (  14.43  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] procd sysupgrade: close input side of
 pipe before reading
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
Cc: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Thu, 3 Oct 2019 at 18:24, Dustin Lundquist
<D.Lundquist@temperednetworks.com> wrote:
> When /usr/libexec/validate_firmware_image is not present on the system
> procd will hang indefinitely on the read() since the input side of the
> pipe is still open.
>
> Signed-off-by: Dustin Lundquist <d.lundquist@temperednetworks.com>
> ---
> system.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/system.c b/system.c
> index 751a016..a7ada13 100644
> --- a/system.c
> +++ b/system.c
> @@ -425,6 +425,7 @@ static int validate_firmware_image_call(const char *file)
>         }
>
>         /* Parent process */
> +       close(fds[1]);
>
>         tok = json_tokener_new();
>         if (!tok) {
> @@ -447,7 +448,6 @@ static int validate_firmware_image_call(const char *file)
>         }
>
>         close(fds[0]);
> -       close(fds[1]);
>
>         err = -ENOENT;
>         if (jsobj) {

You also need to drop close(fds[1]); that is placed inside the "if
(!tok)" block.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
