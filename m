Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BEC1185C95
	for <lists+openwrt-devel@lfdr.de>; Sun, 15 Mar 2020 14:21:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:In-Reply-To:Date:References:To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hnntVblo8VXYqoUDAYINpFWlFljI3kxvjAwcIHy1kEM=; b=fo/BDUaf6hGUqHTL+68gYc4lA
	tGRZeNi4olmXzuLdD3moywvmKCq3sKyEcP6c/ye22/Va1ACHiGMGgkoQONskEJCoDQMM216JT6Gb6
	ah1CiQ8JNnI7wdyEjxaCwbO7bakHxMLHF0whr2h4cmHzn3C+xpI6n0oqNoJevP2OZfMcYaaLrcj50
	sGYz6UJd5o28Bx4zWNqrDcRg3KwPEk+34cZm0ohKq+w3+V5glaAi6J5L1Mrea3QqsGWQ4Wz/OZnYI
	oX6PrfoBPYd/fBtXAMWz6k84VBiap0skQxw8vkjpCdcP1Yan+SENHscn93ZerqiKhHcxRErx+evJt
	svzzQmvAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDTCf-0003VE-E5; Sun, 15 Mar 2020 13:21:17 +0000
To: Thibaut <hacks@slashdirt.org>, mail@adrianschmutzler.de
References: <20200314212303.29701-1-hacks@slashdirt.org>
 <20200315103451.34439-1-hacks@slashdirt.org>
 <005101d5fac2$06e7c670$14b75350$@adrianschmutzler.de>
 <AB7BAD62-99F2-4E02-8C70-BAA463D24D5A@slashdirt.org>
 <00e101d5fac8$99b84050$cd28c0f0$@adrianschmutzler.de>
 <C161EAD9-7C28-484D-A0B6-DA7A9366F514@slashdirt.org>
Date: Sun, 15 Mar 2020 14:20:56 +0100
In-Reply-To: <C161EAD9-7C28-484D-A0B6-DA7A9366F514@slashdirt.org>
MIME-Version: 1.0
Message-ID: <mailman.38830.1584278469.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: "Roger Pueyo Centelles | Guifi.net via openwrt-devel"
 <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: "Roger Pueyo Centelles | Guifi.net" <roger.pueyo@guifi.net>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] [PATCH v2] ar71xx: add support for RB SXTsq 2nD
Content-Type: multipart/mixed; boundary="===============2003237111319311964=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============2003237111319311964==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============2003237111319311964==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from smtp1.guifi.net ([109.69.9.53])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDTCS-0003UI-Cs
	for openwrt-devel@lists.openwrt.org; Sun, 15 Mar 2020 13:21:08 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
	by smtp1.guifi.net (Postfix) with ESMTP id 48gKnQ21cmz3w3w;
	Sun, 15 Mar 2020 14:20:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=guifi.net; h=
	content-language:content-type:content-type:in-reply-to
	:mime-version:user-agent:date:date:message-id:from:from
	:references:subject:subject:received:received:received; s=dkim;
	 t=1584278458; x=1586092859; bh=GIFIoxYPSLwteBY4I5msRQfk+9uYcULG
	d2v0BxUhXMM=; b=lhJF9lfCxuJ4kbOEUc0dywDQF1gD39j4FyaDVgNmSXKRBnAZ
	zlfypni63RnKVQ7Enrk4kt86Oa6A6aztHUuiG8VRMWAuOeTK4eI1EbNVTa6jso21
	WzUHTINDAx29XHQkZZqD9yZ0W1/CkJ3q6rDYYWbFUn8ZdNBZeq90lPc9+3Agr6q5
	x9PV9f2l8IsJv2DJZshIbLdJWVQgmqMXq/07qQ261o1doJbScVMjJ5mkSi3oYVCx
	qTeMinUJIZt1suWKtYCWD+/6xV0DBo+h1ImG5EcJxpS951WZNUKwzKLz9yvYDG7k
	N9Ioy87u6HVnJLgwKxwWUT4Ks8she8uL2CPTiA==
X-Amavis-Modified: Mail body modified (using disclaimer) - smtp1.guifi.net
X-Virus-Scanned: Scrollout F1 at guifi.net
Received: from smtp1.guifi.net ([127.0.0.1])
	by localhost (smtp1.guifi.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id C_k7UZY6XObs; Sun, 15 Mar 2020 14:20:58 +0100 (CET)
Received: from mail.guifi.net (mail.guifi.net [109.69.9.9])
	by smtp1.guifi.net (Postfix) with ESMTP id 48gKnP4ZTfz3vy6;
	Sun, 15 Mar 2020 14:20:57 +0100 (CET)
Received: from [10.11.33.17] (109-69-8-82-exo.ip4.guifi.net [109.69.8.82])
	by mail.guifi.net (Postfix) with ESMTPSA id 0B9A66A568C;
	Sun, 15 Mar 2020 14:20:57 +0100 (CET)
Subject: Re: [OpenWrt-Devel] [PATCH v2] ar71xx: add support for RB SXTsq 2nD
To: Thibaut <hacks@slashdirt.org>, mail@adrianschmutzler.de
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
References: <20200314212303.29701-1-hacks@slashdirt.org>
 <20200315103451.34439-1-hacks@slashdirt.org>
 <005101d5fac2$06e7c670$14b75350$@adrianschmutzler.de>
 <AB7BAD62-99F2-4E02-8C70-BAA463D24D5A@slashdirt.org>
 <00e101d5fac8$99b84050$cd28c0f0$@adrianschmutzler.de>
 <C161EAD9-7C28-484D-A0B6-DA7A9366F514@slashdirt.org>
From: "Roger Pueyo Centelles | Guifi.net" <roger.pueyo@guifi.net>
Autocrypt: addr=roger.pueyo@guifi.net; keydata=
 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
Message-ID: <f968c665-b102-f51a-61ed-7c89e5ae861b@guifi.net>
Date: Sun, 15 Mar 2020 14:20:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <C161EAD9-7C28-484D-A0B6-DA7A9366F514@slashdirt.org>
Content-Type: multipart/alternative;
 boundary="------------858B8B7372596A9707FDCC67"
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_062104_876208_7CE02A71 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [109.69.9.53 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain

This is a multi-part message in MIME format.
--------------858B8B7372596A9707FDCC67
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,

> I believe this is a waste of resources and a very suboptimal approach.
> I=E2=80=99m not sure I=E2=80=99m interested in spending time on this :P=

Probably it is. How would you approach it? Some devices that are the
same hardware with just a different name are already supported like
this:
https://git.openwrt.org/?p=3Dopenwrt/openwrt.git;a=3Dcommit;h=3Dac36cca01=
2dd1bbeea0fc4c2dc7a00941de34b52
>
> Some devices share the exact same hardware and differ only in
> (marketing) name, as evidenced by:
> https://git.openwrt.org/?p=3Dopenwrt/openwrt.git;a=3Dcommitdiff;h=3D5ac=
974f2145c770431a6eb7e006dd086b70224b1
>
> (this device uses the 911L platform)
>
>> Just have a look at how the few ath79 devices are implemented, but
>> note that they will be moved to a mikrotik subtarget soon as
>> indicated by Roger already.
>
> I=E2=80=99ve offered in this thread a couple patches to align the ath79=

> implementation on the existing ramips one wrt mtd partitioning and nami=
ng.

To me they're OK, I have no preference for having the partitions nested
or not. What are the benefits and drawbacks?

Cheers!

>
> Best,
> Thibaut
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


--------------858B8B7372596A9707FDCC67
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Hi,</p>
    <blockquote type="cite"
      cite="mid:C161EAD9-7C28-484D-A0B6-DA7A9366F514@slashdirt.org">
      <div>I believe this is a waste of resources and a very suboptimal
        approach. I’m not sure I’m interested in spending time on this
        :P</div>
    </blockquote>
    Probably it is. How would you approach it? Some devices that are the
    same hardware with just a different name are already supported like
    this:
<a class="moz-txt-link-freetext" href="https://git.openwrt.org/?p=openwrt/openwrt.git;a=commit;h=ac36cca012dd1bbeea0fc4c2dc7a00941de34b52">https://git.openwrt.org/?p=openwrt/openwrt.git;a=commit;h=ac36cca012dd1bbeea0fc4c2dc7a00941de34b52</a><br>
    <blockquote type="cite"
      cite="mid:C161EAD9-7C28-484D-A0B6-DA7A9366F514@slashdirt.org">
      <div><br class="">
      </div>
      <div>Some devices share the exact same hardware and differ only in
        (marketing) name, as evidenced by:</div>
      <div><a
href="https://git.openwrt.org/?p=openwrt/openwrt.git;a=commitdiff;h=5ac974f2145c770431a6eb7e006dd086b70224b1"
          class="" moz-do-not-send="true">https://git.openwrt.org/?p=openwrt/openwrt.git;a=commitdiff;h=5ac974f2145c770431a6eb7e006dd086b70224b1</a></div>
      <div><br class="">
      </div>
      <div>(this device uses the 911L platform)</div>
      <div><br class="">
      </div>
      <div>
        <blockquote type="cite" class="">
          <div class="">
            <div class="">Just have a look at how the few ath79 devices
              are implemented, but note that they will be moved to a
              mikrotik subtarget soon as indicated by Roger already.<br
                class="">
            </div>
          </div>
        </blockquote>
      </div>
      <br class="">
      <div class="">I’ve offered in this thread a couple patches to
        align the ath79 implementation on the existing ramips one wrt
        mtd partitioning and naming.</div>
    </blockquote>
    <p>To me they're OK, I have no preference for having the partitions
      nested or not. What are the benefits and drawbacks?</p>
    <p>Cheers!<br>
    </p>
    <blockquote type="cite"
      cite="mid:C161EAD9-7C28-484D-A0B6-DA7A9366F514@slashdirt.org">
      <div class=""><br class="">
      </div>
      <div class="">Best,</div>
      <div class="">Thibaut</div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
openwrt-devel mailing list
<a class="moz-txt-link-abbreviated" href="mailto:openwrt-devel@lists.openwrt.org">openwrt-devel@lists.openwrt.org</a>
<a class="moz-txt-link-freetext" href="https://lists.openwrt.org/mailman/listinfo/openwrt-devel">https://lists.openwrt.org/mailman/listinfo/openwrt-devel</a>
</pre>
    </blockquote>
  
<br>
<br>
</body>
</html>

--------------858B8B7372596A9707FDCC67--


--===============2003237111319311964==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2003237111319311964==--

