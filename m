Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F297A96DCA
	for <lists+openwrt-devel@lfdr.de>; Wed, 21 Aug 2019 01:30:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kKIkYsIYGaF6saDFjCrerBO/THsqYbEbxcoYl4q3pKQ=; b=EqRVTrXWruP5cveQ3EHC03NU3
	ZvYgnqqP+Ma5Y5yxNAFJXipolmFxqNR23hsdr5kLAIa8b1p11yAiRBB6dNNn4AEVbZ3NNxbV8w6yW
	vVy3vR8Y3zPf/o/T+BT/5WKRJKsrazJcGZGPD8XZ5h88OR4MsmlYdn4lmwvzFxjCFyj6Jf8sZujUM
	SS0fi4A98bQ0AACRGHhm/kWDNnVo9frYBIw1VNFjt7ALZ2UWB+Ijws8jbc9DevDkNfeyQ/D16EiCc
	TSkk7CDV9D888gR1s8csY2ANQhACprKSopodaoD6C/SlAHdi88JxTob6upZG5mu2FEdcy310NQ5V5
	+BNJNO45A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0DZf-0005Yz-A8; Tue, 20 Aug 2019 23:29:59 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0DZZ-0005YY-9J
 for openwrt-devel@lists.openwrt.org; Tue, 20 Aug 2019 23:29:54 +0000
Received: by mail-wm1-x344.google.com with SMTP id o4so262590wmh.2
 for <openwrt-devel@lists.openwrt.org>; Tue, 20 Aug 2019 16:29:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language;
 bh=XGX1B0tjbGIKb6sh/vi4MwU4gvzhaL7AIx2uezm6c6I=;
 b=HEczdf5ICJfSPeV/U1AjePPiDJM3ih0F10K0FnB5gJj6VdG5gs/ViHsEHMcuKq9iQW
 OunTR8FI0j3AEYhfxmnl76GMfveYkka5XLisR1Ro037xy+8+B0Mq2xHrAV2+HuGPSbvi
 Zo9IaArxuR6tbuix7QF6rkOI1OZzVnSVwazA7E03HSP8omIygo6zNvkek/ArsZ2hInT9
 dOCriUkydbNaJdFInyGmt+rhKlAsv+yLn6oWtGN807G5oCtJHj/emDeyYcpPpxehWDOc
 0BUprLkneyYf+BKmzo75cJo1vyHhxYMhte+D5cM2W6HWyO82ZyMcf+ZjnMUfyF0GHPQK
 RcbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language;
 bh=XGX1B0tjbGIKb6sh/vi4MwU4gvzhaL7AIx2uezm6c6I=;
 b=Q2+na7nHilO6fDMwk/35Dn86JI5j9qLRmjWd/sSv13VqgkKFx+jS2l7+0VziTUOYY7
 klwz2GuretqToG5u0RYPQO+bN6N8WDZvqpEdA09V1r2l4BNxr+ysGiSklYk+Pv31shmX
 Oa4R7dtm0czhTXsBVTnzu28MJ5yFJZezlQM4L8mtM/YaKWhcLJmFCJxriAzd21d6woQu
 7rNLnNmO41+rJfASAqeApBFD4Xn854kOv6cNcZxgTTpqClJr+ukz+PcLKXr6ifDys2AD
 x+QWj/zpMYVSQoAhDCB8qg2RvOeFWEtGCCNkD2hCQNy3iTSCmPxiZY9u3hvJIGmSuJc+
 a0lA==
X-Gm-Message-State: APjAAAUe0g2rgR5Zgonvtrdg8EJ4M11EKiV3bmLGBccUt/zIYbcnIlM/
 jI06u7RQm+Yt9Yhs+hdQoe37nsEp
X-Google-Smtp-Source: APXvYqx4xSiEhpjkX8YjrQnS9+DdiED8FJDejLlfGjnj9EOr17KbMXik6Ygfbc8Qx55rJJXfdgCJ4w==
X-Received: by 2002:a1c:7513:: with SMTP id o19mr2248710wmc.126.1566343788229; 
 Tue, 20 Aug 2019 16:29:48 -0700 (PDT)
Received: from [192.168.1.230] ([134.90.239.71])
 by smtp.gmail.com with ESMTPSA id m23sm1804253wml.41.2019.08.20.16.29.47
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 20 Aug 2019 16:29:47 -0700 (PDT)
To: openwrt-devel@lists.openwrt.org
References: <859F4E11-840B-4BDE-AA3E-0BA3FD461620@gmail.com>
 <5db7f548-9eca-d798-5a18-229259507025@ironai.com>
 <2D0AD814-FD6E-45BE-9B6E-7389ABB7DB4A@gmail.com>
 <CANoib0FaZNd4eBQY65P0nuUzOmpv7RKkGLmU+SXO4NEmSn0SBw@mail.gmail.com>
 <178FDDAC-A0CD-4FC3-B8F7-642067E9FFD1@gmail.com>
 <CAKxU2N-07kM6PRQa=WESF6W=aa6gSMG-hyoFJG+ShiFqFhD+Og@mail.gmail.com>
 <9C18EC22-5234-4C2F-BC79-F86E7B6D962C@gmail.com>
From: Alberto Bursi <bobafetthotmail@gmail.com>
Message-ID: <ef9260ec-d29c-ab65-6032-761ed1317b0a@gmail.com>
Date: Wed, 21 Aug 2019 01:29:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <9C18EC22-5234-4C2F-BC79-F86E7B6D962C@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_162953_355192_5C9BF2EC 
X-CRM114-Status: UNSURE (   7.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bobafetthotmail[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.0 FREEMAIL_REPLY         From and body contain different freemails
Subject: Re: [OpenWrt-Devel] Did they check security of OpenWrt?
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
Content-Type: multipart/mixed; boundary="===============0014167085125615683=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============0014167085125615683==
Content-Type: multipart/alternative;
 boundary="------------4EE316AFDEB12F05FC218E20"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------4EE316AFDEB12F05FC218E20
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit


On 21/08/19 00:24, Rich Brown wrote:
>
>> On Aug 20, 2019, at 5:32 PM, Rosen Penev <rosenp@gmail.com 
>> <mailto:rosenp@gmail.com>> wrote:
>> ... Issues are more nuanced than this though. These same people
>> several months ago mentioned a serious ASLR weakness with MIPS.
>> Patches went in the kernel for it.
>
> Does this mean that snapshot builds (with current kernels) now protect 
> against that MIPS vulnerability? What about the stable builds?
>
ASLR is not enabled on OpenWrt (as I said in a mail a few seconds ago) 
so any vulnerability in ASLR is irrelevant.


>
>
> What statements/assertions can we make about whether these are used to 
> create release or snapshot builds? Thanks to all who can contribute info.
>
>

In my other message I pointed to the source of the build system with the 
default options for various stuff.

The same hardening options are used for both release and snapshot 
releases afaik.

They differ only in default package selection (and on source version 
used of course)

-Alberto


--------------4EE316AFDEB12F05FC218E20
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 21/08/19 00:24, Rich Brown wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:9C18EC22-5234-4C2F-BC79-F86E7B6D962C@gmail.com">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <br class="">
      <div>
        <blockquote type="cite" class="">
          <div class="">On Aug 20, 2019, at 5:32 PM, Rosen Penev &lt;<a
              href="mailto:rosenp@gmail.com" class=""
              moz-do-not-send="true">rosenp@gmail.com</a>&gt; wrote:</div>
          <span style="font-family: Helvetica; font-size: 12px;
            font-style: normal; font-variant-caps: normal; font-weight:
            normal; letter-spacing: normal; text-align: start;
            text-indent: 0px; text-transform: none; white-space: normal;
            word-spacing: 0px; -webkit-text-stroke-width: 0px; float:
            none; display: inline !important;" class="">... Issues are
            more nuanced than this though. These same people</span><br
            style="font-family: Helvetica; font-size: 12px; font-style:
            normal; font-variant-caps: normal; font-weight: normal;
            letter-spacing: normal; text-align: start; text-indent: 0px;
            text-transform: none; white-space: normal; word-spacing:
            0px; -webkit-text-stroke-width: 0px;" class="">
        </blockquote>
      </div>
      <div>
        <blockquote type="cite" class="">
          <div class="">
            <div class="Singleton"><span style="font-family: Helvetica;
                font-size: 12px; font-style: normal; font-variant-caps:
                normal; font-weight: normal; letter-spacing: normal;
                text-align: start; text-indent: 0px; text-transform:
                none; white-space: normal; word-spacing: 0px;
                -webkit-text-stroke-width: 0px; float: none; display:
                inline !important;" class="">several months ago
                mentioned a serious ASLR weakness with MIPS.</span><br
                style="font-family: Helvetica; font-size: 12px;
                font-style: normal; font-variant-caps: normal;
                font-weight: normal; letter-spacing: normal; text-align:
                start; text-indent: 0px; text-transform: none;
                white-space: normal; word-spacing: 0px;
                -webkit-text-stroke-width: 0px;" class="">
              <span style="font-family: Helvetica; font-size: 12px;
                font-style: normal; font-variant-caps: normal;
                font-weight: normal; letter-spacing: normal; text-align:
                start; text-indent: 0px; text-transform: none;
                white-space: normal; word-spacing: 0px;
                -webkit-text-stroke-width: 0px; float: none; display:
                inline !important;" class="">Patches went in the kernel
                for it. </span></div>
          </div>
        </blockquote>
        <div><br class="">
        </div>
        Does this mean that snapshot builds (with current kernels) now
        protect against that MIPS vulnerability? What about the stable
        builds?</div>
      <div><br class="">
      </div>
    </blockquote>
    <p>ASLR is not enabled on OpenWrt (as I said in a mail a few seconds
      ago) so any vulnerability in ASLR is irrelevant.<br>
    </p>
    <p><br>
    </p>
    <blockquote type="cite"
      cite="mid:9C18EC22-5234-4C2F-BC79-F86E7B6D962C@gmail.com"><br>
      <div><br class="">
      </div>
      <div>What statements/assertions can we make about whether these
        are used to create release or snapshot builds? Thanks to all who
        can contribute info.</div>
      <div><br class="">
      </div>
      <br>
    </blockquote>
    <p><br>
    </p>
    <p>In my other message I pointed to the source of the build system
      with the default options for various stuff.</p>
    <p>The same hardening options are used for both release and snapshot
      releases afaik. <br>
    </p>
    <p>They differ only in default package selection (and on source
      version used of course)</p>
    <p>-Alberto<br>
    </p>
  </body>
</html>

--------------4EE316AFDEB12F05FC218E20--


--===============0014167085125615683==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0014167085125615683==--

