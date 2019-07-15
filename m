Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9860D6983B
	for <lists+openwrt-devel@lfdr.de>; Mon, 15 Jul 2019 17:18:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZxykG/T8fTPbAuzrp4z0PZeNRBh3KwxpMZhhIfODuYk=; b=OEaDSPwXzCN7vqMviJkG0K91B
	6ipSOjqN7JNhFuXc+qBzYnZWiLnGR+szkDalsO4rcgmeozGd2ZrS5dXATBZ8D4IKV8WCRM+6zJ6x/
	CLd/xxJg+LJieGIrnVbrf2Q9HVxFDw++0hDWhEnH20cKBAxKAdHKDB1RSdR6iSFEnKYn48v07dQYG
	bUntoifKsZCXrcFDex44ID4dWRtn3fzu3xDalYQO69s9Ld7xmd0Tdwl2KptM1fFGtiNf5BMG3Yf+j
	7eDWpv5Q1frpPzyMVDwe6GPniN/h+NUdfdx22Q/jbBr5WuCsc9rdeUPEPFwVAnCTuCdORSJGDiS1O
	c52H7XrSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn2ji-0008Pc-TI; Mon, 15 Jul 2019 15:17:55 +0000
Received: from us-smtp-delivery-195.mimecast.com ([216.205.24.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn2jX-0008NA-6v
 for openwrt-devel@lists.openwrt.org; Mon, 15 Jul 2019 15:17:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=datto.com;
 s=mimecast20190208; t=1563203859;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=2Lp3JDGt2jUd7L7xMUcK+TqKWne8tqA4Ar6++wtgB7Y=;
 b=KatX2byMC2Bi6ClzK9/z4w2nVuuuylFfmdpHdTqkwVBoMX/fnStZ8QryuSNt/3zlRQphJY
 XpIekg7pq1NOM0IQLvLxu22tnh/vrsgOMsidq7pm+h2yx1fu6/5scVn4VJkv6O7k+qxYxF
 jlrffD2USAiA3x/PO/7b3rV9/62ISpo=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-209-IrAVOhBuMICLUc_Hoj9MXA-1; Mon, 15 Jul 2019 11:17:36 -0400
Received: by mail-wr1-f72.google.com with SMTP id w11so9019746wrl.7
 for <openwrt-devel@lists.openwrt.org>; Mon, 15 Jul 2019 08:17:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=exmCgtbxwBJeDb1/5ozDOQlHBhIf+h8ApvUD8Wwnd1o=;
 b=eJ7v40DNAxsRp/wu7FaLD4rNgqDPrjQNT9RjqAf28I1PGoSTAcYw5E1nQ9MNdCwnnj
 ZiuPQuw4kvl4jGsRgYNquUOk5mw/UiKpUE70SGW7F1FhPLL+Hf740xWnnggJK26L/15/
 VjPGnvUyKGGGxszxfTp8xDiDghGRi/Sln8iSvYpIUJKFfg4CZseg+RwjB5g30VvgTd8W
 iZKf0UgKP6+Yy/QYq/D6jZi+SxobWiCT52pgyU8C/EyatOpiQazooAQ5GmhT1T8VPLJ+
 BLlc9JYoRICAp/GDtFZml/kxi4RbDbuS0NWV5Mil8Ks3Mr6EilBw16uPG3PTDPM/ucfv
 cZrw==
X-Gm-Message-State: APjAAAUTf+9htWoysqN5URvCtLYSnFb/7uG2LdCivv1VnquQmQX4QxUi
 hPPv66c+I+IHg+ujdZTmV/C40kRR7sMYNrqAt4b3zoBJ+c3i3YJA/RbYUz6+eNUikEa3+KVz9Ti
 o/EWPa8lIO8mcHzvtpSQ4ahrdDrRxUWI6eCjJefcxSKVu
X-Received: by 2002:adf:ce03:: with SMTP id p3mr31892487wrn.94.1563203855108; 
 Mon, 15 Jul 2019 08:17:35 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzVDTcd8MOfpYDRFdipOuq7weEb8Bj1ljJC2YNzqfdr7H0yOH/piiuxj3VrB1otJRcpMgagp+CRoeUQwNraZxE=
X-Received: by 2002:adf:ce03:: with SMTP id p3mr31892472wrn.94.1563203854954; 
 Mon, 15 Jul 2019 08:17:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190620225754.1685-1-jstefek@datto.com>
 <CAJsYDV+5P6kf=nsXdbSQ4tXN=Xg7MxYwi61kQUYUWWriamZFCA@mail.gmail.com>
In-Reply-To: <CAJsYDV+5P6kf=nsXdbSQ4tXN=Xg7MxYwi61kQUYUWWriamZFCA@mail.gmail.com>
From: Joseph Stefek <jstefek@datto.com>
Date: Mon, 15 Jul 2019 08:17:24 -0700
Message-ID: <CAP+qLbjT5TgoiEfcjkTXaQ8PmMWPWKQjvDKE_NNpLQ3Zx+cp9g@mail.gmail.com>
To: Chuanhong Guo <gch981213@gmail.com>
X-MC-Unique: IrAVOhBuMICLUc_Hoj9MXA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_081743_386799_C98C8483 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [216.205.24.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: Don't override the bootloader
 cmdline args if none are provided in dtb
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============1745100655863638825=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============1745100655863638825==
Content-Type: multipart/alternative; boundary="0000000000007c9157058db9c25d"

--0000000000007c9157058db9c25d
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Agreed, we can drop this.

Thanks,
Joe

On Mon, Jul 15, 2019 at 8:14 AM Chuanhong Guo <gch981213@gmail.com> wrote:

> Hi!
>
> On Fri, Jun 21, 2019 at 6:58 AM <jstefek@datto.com> wrote:
> >
> > From: Joe Stefek <jstefek@datto.com>
> >
> > This change allows cmdline arguments provided by the bootloader to be
> used
> > if no cmdline arguments are provided in the "custom" section of the
> device
> > tree.
>
> I've dropped the entire prom-fixes patch two weeks ago [0] and I guess
> we don't need this fix anymore :)
>
> Regards,
> Chuanhong Guo
>
> [0] https://git.openwrt.org/7a8d3432c739c6ff038295176e8b6324e92fc116
>
>

--0000000000007c9157058db9c25d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Agreed, we can drop this.<div><br></div><div>Thanks,</div>=
<div>Joe</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, Jul 15, 2019 at 8:14 AM Chuanhong Guo &lt;<a href=
=3D"mailto:gch981213@gmail.com">gch981213@gmail.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex">Hi!<br>
<br>
On Fri, Jun 21, 2019 at 6:58 AM &lt;<a href=3D"mailto:jstefek@datto.com" ta=
rget=3D"_blank">jstefek@datto.com</a>&gt; wrote:<br>
&gt;<br>
&gt; From: Joe Stefek &lt;<a href=3D"mailto:jstefek@datto.com" target=3D"_b=
lank">jstefek@datto.com</a>&gt;<br>
&gt;<br>
&gt; This change allows cmdline arguments provided by the bootloader to be =
used<br>
&gt; if no cmdline arguments are provided in the &quot;custom&quot; section=
 of the device<br>
&gt; tree.<br>
<br>
I&#39;ve dropped the entire prom-fixes patch two weeks ago [0] and I guess<=
br>
we don&#39;t need this fix anymore :)<br>
<br>
Regards,<br>
Chuanhong Guo<br>
<br>
[0] <a href=3D"https://git.openwrt.org/7a8d3432c739c6ff038295176e8b6324e92f=
c116" rel=3D"noreferrer" target=3D"_blank">https://git.openwrt.org/7a8d3432=
c739c6ff038295176e8b6324e92fc116</a><br>
<br>
</blockquote></div>

--0000000000007c9157058db9c25d--



--===============1745100655863638825==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1745100655863638825==--


