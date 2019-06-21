Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 888A04EF30
	for <lists+openwrt-devel@lfdr.de>; Fri, 21 Jun 2019 21:04:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FKUf33KHgfkVWQBVdV3kWrPDkeGZtPNpVIcuZDu4mqc=; b=qaPCwZGp7olCxr2yUQrmW+BKx
	KCffkz2Rq4ccJ81PyVZf6WCiS0nBnpLYdS9OyE+S+Ua77xzuYCV8HUK8soxNprFUcoZn1HlT1qMez
	2ee8O7l1jzCQTazvXWtP86Ncq1tSEO18sXVqDag240SAtgMwkUeK55bqtQMS21wXVmyL+2RvpiATa
	GUPyeui53eJmCoRhfh2msj+XJcoGZKV6IqjmbN6FsQ//R0UAZkYaAvr4yn378FCTxDausra8aF/iO
	rhvXWrKw5y2jULUpeXjh4DloFKIP3lum5ms+VGEKsQOpTVLoIHfct/9SUdlPF9NNFnw2pguln0CIR
	zKV9dJssA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heOp8-000205-PX; Fri, 21 Jun 2019 19:03:46 +0000
Received: from mail-qk1-x72b.google.com ([2607:f8b0:4864:20::72b])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heOp0-0001zg-Or; Fri, 21 Jun 2019 19:03:40 +0000
Received: by mail-qk1-x72b.google.com with SMTP id m14so5205522qka.10;
 Fri, 21 Jun 2019 12:03:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language;
 bh=0F163Q9HCk9zH9YrAdURT/tcuymCfkxuHQlCJPf3Jrs=;
 b=IYYyEfB1L8rS02PQovF44Rd9PSHSVLnyiTkTXhLFDExsW+zOO8TdWdiz3DJ5MJ1BhA
 pr8ITEM2S3qenfwCpAraNA4expVe60Gv5kMxZxALOa1mV4KsXDeRpHklVKoWlNj0BXmp
 zJ2JKSBgNlgXl+IqRc6zg7Jtpv1SbSRRN8UFU4HAc6ryaR9jre8N/FDxWEd/Kw6o94Nh
 VzN6L8fQ9tcRgDMNKaWKeq453VArD+/eUqSrdRpGsgR/lsGM7rDt6XDGJR8yUkWwb8JF
 ujHqYYCqTWLQYW1A3m2tQo1Z51ho5R5/C4CeFUKhuK+NP2okTRXcvGqWVRbLtQ84Po7P
 tLGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language;
 bh=0F163Q9HCk9zH9YrAdURT/tcuymCfkxuHQlCJPf3Jrs=;
 b=Gn6EOtyWcBimzi7KWYHIN04enl5EJX1Dbyzn7JqD29YTHO92VLCmEp2qc1zQag4Ajo
 +bFvY0sZRq+wkELLJoqKVOsfdnOwgFrOj2jtOQbbcz9ihwJP9Dh4TQKfEJEltmi58V3Q
 ZBONEPLFf8HMro9Mj/KFwqzQRkCC0EAifUtGZrz5z+EnIOjUw4lmLYljVb7TNtjFkGb8
 wJcD+wR/hG5VZBwdqoq5cbcLkNZ4v+/kS9YjHAz72HrInuSW3jY3OTnZJ1c+HDN04klF
 Jw/84wLrVLQPlipj/kZAIILy7mBio7kz8mZ1//tXN9OicOwuN5PaSxczOdbQKq7gnpca
 5WYw==
X-Gm-Message-State: APjAAAVLrK4ISKhrmyO+j+caXAxoxQS0hL+OmSK0MEKtxC/AFItfEnkh
 UzQPbpXs0jR3UIYPozDETJd+0hDl
X-Google-Smtp-Source: APXvYqxTYnSukrieCcA0apavckedYxtrYGyf0ojc2sm2x61pgT9radfdlntq0MJ2hKg3vdgeFyiWKQ==
X-Received: by 2002:a37:b342:: with SMTP id c63mr34482221qkf.292.1561143816978; 
 Fri, 21 Jun 2019 12:03:36 -0700 (PDT)
Received: from [192.168.1.100] ([177.54.207.9])
 by smtp.gmail.com with ESMTPSA id 47sm2556883qtw.90.2019.06.21.12.03.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 21 Jun 2019 12:03:36 -0700 (PDT)
To: OpenWrt Project Administration <openwrt-adm@lists.openwrt.org>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
References: <7c6e24b6-c832-0cbf-198c-69c902f18f8b@wwsnet.net>
From: Fernando Frediani <fhfrediani@gmail.com>
Message-ID: <b2387964-aaa5-84c0-e1ee-8c9118880779@gmail.com>
Date: Fri, 21 Jun 2019 16:03:33 -0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <7c6e24b6-c832-0cbf-198c-69c902f18f8b@wwsnet.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_120338_833233_8B3B2207 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:72b listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fhfrediani[at]gmail.com)
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] LEDE 17.01.7 and OpenWrt 18.06.3 deadline on
 Friday
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
Content-Type: multipart/mixed; boundary="===============5335504700075214901=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============5335504700075214901==
Content-Type: multipart/alternative;
 boundary="------------C2A6EFB72197347D0FDF2652"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------C2A6EFB72197347D0FDF2652
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello all.
Thanks Jo for the update.

One thing that was discussed here a while ago and unless I am mistaken 
never came to a conclusion was the possibility of extending the life of 
17.01.x a little while due to many cases of 18.06 and its significant 
improvements not being able to run on so many very good or usable 
equipment at all.

I'm not sure what's the best way of finishing that discussion but 
regardless the final result of it I personally think in this case (which 
is slightly different from a normal end-of-life of any version), is 
worth at least discussing the pros and cons. One thing to highlight was 
that the last thing I remember was proposed was not for 17.01.x to keep 
receiving full support for this extra time but only major and security 
fixes.

Let me know your views.

Best regards
Fernando

On 20/06/2019 06:57, Jo-Philipp Wich wrote:
> Hi,
>
> please merge any outstanding changes that should be
> part of LEDE 17.07.7 and OpenWrt 18.06.3 into the
> respective lede-17.01 and openwrt-18.06 branches until
> Friday, the 21st of June at 09:00 UTC.
>
> I will tag these branches then and start building
> corresponding binary releases shortly after.
>
> The v17.01.7 release will also mark the end-of-life of
> the LEDE 17.01 series - we'll decommission the LEDE
> 17.01 related build resources and repurpose them for
> producing 19.07 binaries.
>
> Regards,
> Jo
>
>
> _______________________________________________
> openwrt-adm mailing list
> openwrt-adm@lists.openwrt.org
> http://lists.infradead.org/mailman/listinfo/openwrt-adm

--------------C2A6EFB72197347D0FDF2652
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hello all.<br>
      Thanks Jo for the update.</p>
    <p>One thing that was discussed here a while ago and unless I am
      mistaken never came to a conclusion was the possibility of
      extending the life of 17.01.x a little while due to many cases of
      18.06 and its significant improvements not being able to run on so
      many very good or usable equipment at all.<br>
    </p>
    <p>I'm not sure what's the best way of finishing that discussion but
      regardless the final result of it I personally think in this case
      (which is slightly different from a normal end-of-life of any
      version), is worth at least discussing the pros and cons. One
      thing to highlight was that the last thing I remember was proposed
      was not for 17.01.x to keep receiving full support for this extra
      time but only major and security fixes.</p>
    <p>Let me know your views.</p>
    <p>Best regards<br>
      Fernando<br>
    </p>
    <div class="moz-cite-prefix">On 20/06/2019 06:57, Jo-Philipp Wich
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:7c6e24b6-c832-0cbf-198c-69c902f18f8b@wwsnet.net">
      <pre class="moz-quote-pre" wrap="">Hi,

please merge any outstanding changes that should be
part of LEDE 17.07.7 and OpenWrt 18.06.3 into the
respective lede-17.01 and openwrt-18.06 branches until
Friday, the 21st of June at 09:00 UTC.

I will tag these branches then and start building
corresponding binary releases shortly after.

The v17.01.7 release will also mark the end-of-life of
the LEDE 17.01 series - we'll decommission the LEDE
17.01 related build resources and repurpose them for
producing 19.07 binaries.

Regards,
Jo

</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
openwrt-adm mailing list
<a class="moz-txt-link-abbreviated" href="mailto:openwrt-adm@lists.openwrt.org">openwrt-adm@lists.openwrt.org</a>
<a class="moz-txt-link-freetext" href="http://lists.infradead.org/mailman/listinfo/openwrt-adm">http://lists.infradead.org/mailman/listinfo/openwrt-adm</a>
</pre>
    </blockquote>
  </body>
</html>

--------------C2A6EFB72197347D0FDF2652--


--===============5335504700075214901==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5335504700075214901==--

