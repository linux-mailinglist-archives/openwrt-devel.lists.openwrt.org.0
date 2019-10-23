Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F7E7E2512
	for <lists+openwrt-devel@lfdr.de>; Wed, 23 Oct 2019 23:18:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Date:Message-ID:From:To:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=luTZ11KD9Ud7ortHzbinFPkck+Om0w51oIjJdDwfhD8=; b=BO+
	d1yUkUkj8uWDC2Tpsr3qcTt9jyEWHaRInuwyhaPjedWxg4KJxPtD2Yr78RbwV33LriSj4BsAkZXUl
	4JpSBOPPUwiBpgEyIPH7N1VauW0rYAB4xXFIj8Yo15xVJloZL1yuwe6ly3uCO3RMl29RJH+PwCgvJ
	qpa1XMz/IRSWeYJc3eYa6UwwnJDsEf+D6MSgzJ3MixrmNLefojYfe7HHVlA3rQi33cq/Cwt/MkKFl
	8ZhIAxl0pBVmv+EHWWBKC5bULyQd08ovAZK7A8S/WX0PAF0NPGzKALDlJlf7m8OBSZ/BiUDANeeEH
	S/T3lH4P2xgrzZWLTIbcepb/Gqbeq7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNO1r-0005pZ-IX; Wed, 23 Oct 2019 21:18:51 +0000
Received: from rapiduswireless.com ([204.232.164.51]
 helo=825679-web1.circlegraphics.ca)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNO1k-0005p6-HI
 for openwrt-devel@lists.openwrt.org; Wed, 23 Oct 2019 21:18:45 +0000
Received: from [192.168.0.2] (S010600fc8dfd3c53.vf.shawcable.net [70.68.21.70])
 by 825679-web1.circlegraphics.ca (Postfix) with ESMTPA id DECC15007F9
 for <openwrt-devel@lists.openwrt.org>; Wed, 23 Oct 2019 17:11:31 -0400 (EDT)
To: openwrt-devel@lists.openwrt.org
From: Rapidus Wireless Research and Development <rand@rapiduswireless.com>
Message-ID: <ec3161a0-7926-b514-6409-548d4947c9f1@rapiduswireless.com>
Date: Wed, 23 Oct 2019 14:11:30 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_141844_696061_52BEE142 
X-CRM114-Status: UNSURE (   1.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 HTML_OBFUSCATE_05_10   BODY: Message is 5% to 10% HTML obfuscation
Subject: [OpenWrt-Devel] How to add items to Luci wireless_modefreq template
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
Content-Type: multipart/mixed; boundary="===============7925511268544137296=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============7925511268544137296==
Content-Type: multipart/alternative;
 boundary="------------21A558F8A8367B66E59B4840"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------21A558F8A8367B66E59B4840
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

The expected behavior for items on the Luci wireless_modefreqtemplateis 
that changing the value then clicking Save&Apply results in:

 1. the UCI configuration item being set and committed,
 2. the wireless is restarted.
    I added 2 more items to thistemplate, but for one of them, I get 1)
    but not 2).
    The existing items and other added item get expected behavior.
    I guessed that you have to add the item(s) to the taboption's
    cfgvalue, formvalue and write functions, but is there more to it?

Thanks


--------------21A558F8A8367B66E59B4840
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="cooked" style="overflow-wrap: break-word; line-height:
      1.4; overflow: hidden; padding: 0px 11px 0.25em; color: rgb(34,
      34, 34); font-family: Helvetica, Arial, sans-serif; font-size:
      15px; font-style: normal; font-variant-ligatures: normal;
      font-variant-caps: normal; font-weight: 400; letter-spacing:
      normal; orphans: 2; text-align: start; text-indent: 0px;
      text-transform: none; white-space: normal; widows: 2;
      word-spacing: 0px; -webkit-text-stroke-width: 0px;
      background-color: rgb(255, 255, 255); text-decoration-style:
      initial; text-decoration-color: initial;">
      <p style="margin-top: 0px;">The expected behavior for items on the
        Luci wireless_modefreq<span> </span><span
          class="highlight-strong" style="background-color: rgb(255,
          255, 166);">template</span><span> </span>is that changing the
        value then clicking Save&amp;Apply results in:</p>
      <ol style="clear: both;">
        <li>the UCI configuration item being set and committed,</li>
        <li>the wireless is restarted.<br>
          I added 2 more items to this<span> </span><span
            class="highlight-strong" style="background-color: rgb(255,
            255, 166);">template</span>, but for one of them, I get 1)
          but not 2).<br>
          The existing items and other added item get expected behavior.<br>
          I guessed that you have to add the item(s) to the taboption's
          cfgvalue, formvalue and write functions, but is there more to
          it?</li>
      </ol>
    </div>
    <section class="post-menu-area clearfix" style="display: block;
      margin: 20px 0px; position: relative; padding-left: 11px; color:
      rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif;
      font-size: 15px; font-style: normal; font-variant-ligatures:
      normal; font-variant-caps: normal; font-weight: 400;
      letter-spacing: normal; orphans: 2; text-align: start;
      text-indent: 0px; text-transform: none; white-space: normal;
      widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;
      background-color: rgb(255, 255, 255); text-decoration-style:
      initial; text-decoration-color: initial;">
      <nav class="post-controls clearfix collapsed" style="display:
        block; padding: 0px;">Thanks<br
          class="Apple-interchange-newline">
      </nav>
    </section>
  </body>
</html>

--------------21A558F8A8367B66E59B4840--


--===============7925511268544137296==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7925511268544137296==--

