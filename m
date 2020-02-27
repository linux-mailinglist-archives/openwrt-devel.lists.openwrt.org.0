Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4BA11712BA
	for <lists+openwrt-devel@lfdr.de>; Thu, 27 Feb 2020 09:44:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=15Z5bNW9xSNI2/p+kk5cYwo7PhjxUxoCG8ZXzhVEVSI=; b=C1kJEUMHUyc13Y5lRtSj1DtkM
	r9N/tBQ8SrTTSji8W8Y9KEXlNd71eOrWlsPwfvnvgG7i1EcuOHJRuAwcO7S8S2lSMv8L/0KriIN9E
	3iYzG4drUNoIGIFlTA1MTKlYVyLKRzKoBuH2ww6QOo2RPSLx+uZuhR4D0cvTvqB3SfK0HaOkiUPHX
	mLVxHyipNFzKKuA1edsGqWJuXlEfziTNq5o6ApYB6VNOfIElP28M1EoCyoF3T3c7LY+4qiCTM/dQc
	sAA00a8BpEOSbmtBTf/bt3APXM4Hhm2+kocv+CMW4dpJZzu2Z5y5geQuerhwiD8BNHrbGNJOe9MFN
	elLqcLZkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Elq-0001YA-M6; Thu, 27 Feb 2020 08:43:50 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Elf-0001Xe-Ih
 for openwrt-devel@lists.openwrt.org; Thu, 27 Feb 2020 08:43:41 +0000
Received: by mail-wm1-x342.google.com with SMTP id z12so2484510wmi.4
 for <openwrt-devel@lists.openwrt.org>; Thu, 27 Feb 2020 00:43:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language;
 bh=YsuVyvJlrOb3CvU1+rK5EalMg4WxyHKVryWaFxWFXsY=;
 b=cPsbQlat4v9/DL3LnyKA5iXqhDzA93jC+YaVCwLemo5Q9x5dH5N/Jc9vLWU4rLZBJd
 b7Xv8PGCeb4gGPrFuoRV0KQ3rjFBjjHniFr2LMoFhT/TR6yFYraPT0YlPeGdOxB2W4JU
 8FJ2u9oYqyGqgFzJfMnaB3bZM8dGYCgIl7cKnLeATy8Yex6WsblUXTnkAiRDXTj6iiw3
 9L6P5EukLS8Ha099yKb8S3aEThAcb/q1tn+EYfXhwCFE6xBm/wuaJl8TCtShqcOYUpsn
 aHzsv6iEO690pba2F/53rHYgq4/k2F9NIhNKgrCY0keeHpb4yoDC8K42ynX6QB1NuyRA
 tYrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language;
 bh=YsuVyvJlrOb3CvU1+rK5EalMg4WxyHKVryWaFxWFXsY=;
 b=A/bb3bQHP0Rw9sAtQGUd2ZT0h2zbw46XOfCSKpIHjABwWa86KY373vL3ygm404YqU6
 df+zJS+4/jHknTomh0KfihC3gDdWud48tNG8imJclZny2bCK0IxgyNqHSvoAESwxVilN
 BtNVPN4U8hnQb243VV4EQzKXVSgdohdC1mFrnXYpsljSgEPZg4O6YLUo/V3xynhSTTpx
 2JHsAYttH5DTMtLgN6r5j7fNMF+NCs7cYw+eUfz8GCXQHxUpQbQxB6AaJw9VofKEIESr
 MztQmT+hyogKZSZCj5eNEjCTPpfz9eGN0oivI7c8tTlPeYrUiV50lstv4O0lY5heE992
 p75Q==
X-Gm-Message-State: APjAAAXd3w1fyiKbk9/y3v+l0lqsb7BaXDhrf4iMP5R6sl1Gy1qANuDM
 +Ep1Bf1E1YAELCeV8haecOw=
X-Google-Smtp-Source: APXvYqwxwFkoF8ov7//syqHHegBim+QgBgomN82hffGQXXWRll4gB2PoDjnQ+B6og/9b/Y4SsyPRaQ==
X-Received: by 2002:a7b:cbc8:: with SMTP id n8mr3889901wmi.35.1582793017828;
 Thu, 27 Feb 2020 00:43:37 -0800 (PST)
Received: from [192.168.111.134] ([188.14.113.33])
 by smtp.gmail.com with ESMTPSA id s8sm7197953wrt.57.2020.02.27.00.43.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 27 Feb 2020 00:43:37 -0800 (PST)
To: openwrt-devel@lists.openwrt.org, rayknight@me.com
References: <20200224120605.152672-1-mans0n@gorani.run>
 <020001d5eb15$97c9e810$c75db830$@adrianschmutzler.de>
 <BF9B5E3E-E8A4-4798-B85A-1078A871F6A2@me.com>
 <005c01d5ebca$18761290$496237b0$@adrianschmutzler.de>
 <mailman.34108.1582780593.2486.openwrt-devel@lists.openwrt.org>
From: Alberto Bursi <bobafetthotmail@gmail.com>
Message-ID: <58dc20a2-a8ba-62e5-a13e-ad2833674289@gmail.com>
Date: Thu, 27 Feb 2020 09:44:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <mailman.34108.1582780593.2486.openwrt-devel@lists.openwrt.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_004339_620531_D48105B7 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bobafetthotmail[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] kirkwood: convert DTS patches into
 plain DTS files
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
Content-Type: multipart/mixed; boundary="===============8626640727016301068=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============8626640727016301068==
Content-Type: multipart/alternative;
 boundary="------------8F54AA986F2690EF69150C49"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------8F54AA986F2690EF69150C49
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit


On 27/02/20 06:16, Raylynn Knight via openwrt-devel wrote:
> The sender domain has a DMARC Reject/Quarantine policy which disallows
> sending mailing list messages using the original "From" header.
>
> To mitigate this problem, the original message has been wrapped
> automatically by the mailing list software.
>
> Sorry, I did intend the email for the list.
>
> I actually have an example of all of the devices affected by this patch except the nsa310b.  Would there be any issue with me trying to get the OpenWrt patches upstreamed?
>
> Ray
>   
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


I have a nsa310b and I can test things on it, if you want to upstream 
its patches.

If you are good at upstreaming, could you also consider upstreaming the 
ledtrig-libata patch?

https://github.com/openwrt/openwrt/blob/master/target/linux/generic/pending-4.19/834-ledtrig-libata.patch

It's about creating a led trigger for each SATA port and it would be 
nice to have upstream too.

-Alberto


--------------8F54AA986F2690EF69150C49
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 27/02/20 06:16, Raylynn Knight via
      openwrt-devel wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:mailman.34108.1582780593.2486.openwrt-devel@lists.openwrt.org">
      <pre class="moz-quote-pre" wrap="">The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.</pre>
      <br>
      <pre class="moz-quote-pre" wrap="">Sorry, I did intend the email for the list.

I actually have an example of all of the devices affected by this patch except the nsa310b.  Would there be any issue with me trying to get the OpenWrt patches upstreamed?

Ray
 

</pre>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
openwrt-devel mailing list
<a class="moz-txt-link-abbreviated" href="mailto:openwrt-devel@lists.openwrt.org">openwrt-devel@lists.openwrt.org</a>
<a class="moz-txt-link-freetext" href="https://lists.openwrt.org/mailman/listinfo/openwrt-devel">https://lists.openwrt.org/mailman/listinfo/openwrt-devel</a>
</pre>
    </blockquote>
    <p><br>
    </p>
    <p>I have a nsa310b and I can test things on it, if you want to
      upstream its patches.</p>
    <p>If you are good at upstreaming, could you also consider
      upstreaming the ledtrig-libata patch?</p>
    <p><a class="moz-txt-link-freetext" href="https://github.com/openwrt/openwrt/blob/master/target/linux/generic/pending-4.19/834-ledtrig-libata.patch">https://github.com/openwrt/openwrt/blob/master/target/linux/generic/pending-4.19/834-ledtrig-libata.patch</a></p>
    <p>It's about creating a led trigger for each SATA port and it would
      be nice to have upstream too.</p>
    <p>-Alberto<br>
    </p>
  </body>
</html>

--------------8F54AA986F2690EF69150C49--


--===============8626640727016301068==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8626640727016301068==--

