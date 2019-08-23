Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B35A9A6BC
	for <lists+openwrt-devel@lfdr.de>; Fri, 23 Aug 2019 06:26:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=D3W6/UDMAPmaHa3icDX0KDbTvW14Mp1Zd/RWL0BOBsc=; b=SJ+pMrHnWPPiGHR3FU0nAUxRe
	B0zWPCDIcWZ6+uPrjGoBrmCa/qB3lUqCXx7dbn9RmyfNsn9TrblxF9YtKz73UWQ21H0MlbbHlSpSC
	hY6Wr0X2qKx+BgulbIoHv+sL7nXaAoG7gW1+pdVFNfDSJ4f+yGX/mHbJ1e3p6f3ruZA1H9gtCAadV
	DGCzXSkeiA4h50kwzP5pCaxaivCBqcUbE05w79vqrJyf4nFk0j+3XJnAzy4BQEpzen9oXucYkHsFi
	rRppKpfbHrHevvpCiIuQjG69RwyyvzqdIJ48/368TH0tw7h6yF5QhsZ8VuE7C0wci/83OJPge7Jff
	C/ousXvTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i119J-0000YU-IR; Fri, 23 Aug 2019 04:26:05 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1190-0000YB-5U
 for openwrt-devel@lists.openwrt.org; Fri, 23 Aug 2019 04:25:47 +0000
Received: by mail-lj1-x22c.google.com with SMTP id m24so7560330ljg.8
 for <openwrt-devel@lists.openwrt.org>; Thu, 22 Aug 2019 21:25:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language;
 bh=wVXmhQTkwOKmLlxCDdYtZiD/u9kYJlluLjUYSdpXcUo=;
 b=MWunlLVCT4FcwTGRNrqUzwlLdvVi5rp/zsC8SIOLasGkd8qg77WfHWlafpkJ6wtX8/
 xLp0Jkr7L9KvlVkYfjqdEZ8IyLvtta1YKS+xuNNaE2Gz5CULDq4eRWeRcG4QQr6RPpQT
 l4NtWygC6O5r+OmvFFQLlVW3HJs4p2szNXbdXZB7mfs6k8VMVhp/5Txv6dAjw+6/qjPC
 S8SkEC0vACYJTZRXUOcdKcsgxcj4PQ1Ttq7RhOKjh2Paajk/5F331+s5WUGgD9vhSdBF
 pCGmOgcb/jnkWrwkh8l8rC6Qfoec+PmwITZl0TqIf3nEFGEddXA606AVPTJRo6qG+TuO
 HbWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language;
 bh=wVXmhQTkwOKmLlxCDdYtZiD/u9kYJlluLjUYSdpXcUo=;
 b=DEsbyARD8pWOVepruPXVpn2u/3tAGI+r2y8taKAgQQ3/x1zDWjAhdnDextg9z2zbEF
 VjC9G31fMRLC/XUMn3T3YQHE7LIEi93NXryl+2t035und27X0cLTXGRxHeyy833N5e2i
 XfneKjUE+u31Wzj39F8ShCplsppb1LJ36GaXn6mDHXNKyx+Bh1h4conJWlHgfYELi9Ub
 pwhvNMl8tlDXwD0CYBmwhsu7daIXCVrW0SZIIfEm+HBKsOBFPGRlXakDhxFJIbub3AP/
 uANj7CrOE7ZN/FD7lULK4X+Hn5u1TWaD7T+nH/ZbDcjxJGCF3Yi2FUHofZHRBfBJNPut
 gGUQ==
X-Gm-Message-State: APjAAAWNcKi/yAtAGJgi4R3R87+UgHaHQe1a5o1luEoBs7BR5N4V1haB
 DupNWeBm5U0KvmmGKA3M0Lvz5dHe06o=
X-Google-Smtp-Source: APXvYqxB7sLO87chnW6i8s80MVSpdNmdghOIzefoEKrlVJnp4ARORFQM9AluR5jFYQo0G2bkq84rHg==
X-Received: by 2002:a2e:8616:: with SMTP id a22mr1591730lji.167.1566534343162; 
 Thu, 22 Aug 2019 21:25:43 -0700 (PDT)
Received: from [192.168.90.130] (88-119-152-93.static.zebra.lt.
 [88.119.152.93])
 by smtp.gmail.com with ESMTPSA id x21sm426968ljj.57.2019.08.22.21.25.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 22 Aug 2019 21:25:42 -0700 (PDT)
To: pothuganti sridhar <pothuganti.sridhar@gmail.com>,
 openwrt-devel@lists.openwrt.org
References: <CAFXV_9GFE_Sxfn_soyiTT9dG1_XVTGe9EJe5K-uvaFm1tvOmvg@mail.gmail.com>
From: =?UTF-8?Q?Simonas_Tamo=c5=a1aitis?= <simsasss@gmail.com>
Message-ID: <1fb57959-09f8-e4a4-0763-f303df7aa49c@gmail.com>
Date: Fri, 23 Aug 2019 07:25:41 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CAFXV_9GFE_Sxfn_soyiTT9dG1_XVTGe9EJe5K-uvaFm1tvOmvg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_212546_235835_FF64E55C 
X-CRM114-Status: GOOD (  12.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:22c listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (simsasss[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] Regarding UCI for multi-point GRE on OpenWRT
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
Content-Type: multipart/mixed; boundary="===============6595885454101497713=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============6595885454101497713==
Content-Type: multipart/alternative;
 boundary="------------D4120C714F475DD1611FC49D"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------D4120C714F475DD1611FC49D
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hello,

try to use peeraddr '0.0.0.0'

Pagarbiai,
Simonas Tamošaitis

On 8/22/19 10:21 AM, pothuganti sridhar wrote:
> Hello All,
>
> I am trying to implement DMVPN with OpenWRT. That requires multipoint 
> GRE tunnels. In case of the multipoint GRE tunnel, the remote 
> endpoint/peer address will be resolved dynamically using NHRPD 
> protocol/daemon.
>
> I have gone through the GRE documentation at the following link.
>
> https://openwrt.org/docs/guide-user/network/tunneling_interface_protocols
>
> In the above documentation, it is mentioned that "peeraddr" is the 
> must require field.
>
> Is anyone tried to create multipoint GRE using UCI?
>
> To make it(peeraddr) optional field, what are the changes required?
>
> Any points will be helpful.
>
> Thanks in advance.
>
> Regards,
> Sridhar
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--------------D4120C714F475DD1611FC49D
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hello,</p>
    <p>try to use <span
style="background-color:rgba(255,255,255,0.9);color:rgb(51,51,51);font-family:Consolas,&quot;Andale
        Mono WT&quot;,&quot;Andale Mono&quot;,&quot;Bitstream Vera Sans
        Mono&quot;,&quot;Nimbus Mono L&quot;,Monaco,&quot;Courier
        New&quot;,monospace;font-size:14px">peeraddr '0.0.0.0'<br>
      </span></p>
    <pre class="moz-signature" cols="72">Pagarbiai,
Simonas Tamošaitis
</pre>
    <div class="moz-cite-prefix">On 8/22/19 10:21 AM, pothuganti sridhar
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAFXV_9GFE_Sxfn_soyiTT9dG1_XVTGe9EJe5K-uvaFm1tvOmvg@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">Hello All,
        <div><br>
        </div>
        <div>I am trying to implement DMVPN with OpenWRT. That requires
          multipoint GRE tunnels. In case of the multipoint GRE tunnel,
          the remote endpoint/peer address will be resolved dynamically
          using NHRPD protocol/daemon.</div>
        <div><br>
        </div>
        <div>I have gone through the GRE documentation at the following
          link.</div>
        <div><br>
        </div>
        <div><a
href="https://openwrt.org/docs/guide-user/network/tunneling_interface_protocols"
            moz-do-not-send="true">https://openwrt.org/docs/guide-user/network/tunneling_interface_protocols</a> </div>
        <div> <br>
        </div>
        <div>In the above documentation, it is mentioned that "<span
style="background-color:rgba(255,255,255,0.9);color:rgb(51,51,51);font-family:Consolas,&quot;Andale
            Mono WT&quot;,&quot;Andale Mono&quot;,&quot;Bitstream Vera
            Sans Mono&quot;,&quot;Nimbus Mono
            L&quot;,Monaco,&quot;Courier
            New&quot;,monospace;font-size:14px">peeraddr</span>" is the
          must require field. </div>
        <div><br>
        </div>
        <div>Is anyone tried to create multipoint GRE using UCI? </div>
        <div><br>
        </div>
        <div>To make it(<span
style="background-color:rgba(255,255,255,0.9);color:rgb(51,51,51);font-family:Consolas,&quot;Andale
            Mono WT&quot;,&quot;Andale Mono&quot;,&quot;Bitstream Vera
            Sans Mono&quot;,&quot;Nimbus Mono
            L&quot;,Monaco,&quot;Courier
            New&quot;,monospace;font-size:14px">peeraddr</span>)
          optional field, what are the changes required?</div>
        <div><br>
        </div>
        <div>Any points will be helpful.</div>
        <div><br>
        </div>
        <div>Thanks in advance.</div>
        <div><br>
        </div>
        <div>Regards,</div>
        <div>Sridhar</div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
openwrt-devel mailing list
<a class="moz-txt-link-abbreviated" href="mailto:openwrt-devel@lists.openwrt.org">openwrt-devel@lists.openwrt.org</a>
<a class="moz-txt-link-freetext" href="https://lists.openwrt.org/mailman/listinfo/openwrt-devel">https://lists.openwrt.org/mailman/listinfo/openwrt-devel</a>
</pre>
    </blockquote>
  </body>
</html>

--------------D4120C714F475DD1611FC49D--


--===============6595885454101497713==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6595885454101497713==--

