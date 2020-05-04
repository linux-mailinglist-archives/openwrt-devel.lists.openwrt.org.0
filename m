Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41AD71C4988
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 May 2020 00:23:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NgzkCw+uUzFH0M041tAEYB4+IyuQfyi9iaA2e3J6KZY=; b=mNNGNv0lH7FyLeBzcgIfjYQMk
	6D3rtiCSryYRE7+wJ3XorLb+pSa2gddxS9iA3rUzIXgFPJHJnQIvr0pnZu4kpxg+xETxaKNcd/Z5D
	SOdBL5ia1jfgCasitlHxwFsl8W0IAj+DSc3GMimB3dCoTuMhnBYde8IaC+nNCwJIMCsgFiYcNgS1P
	+caioOZhXk3qPOIuGIZXtS8OiqxsMqs9zDPx//l+0DssGWrluEvyszPUM3INZjjQPVe0KAZiC6v+X
	LuNOdemY6MdTJJr7s4CiQ9Wx6zV/ShHLjwpGiW1FRroef+33pQja+MpCD7D7SkH+Tw/IhUL4AVFlD
	LZVXLo26g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVjUO-00006t-02; Mon, 04 May 2020 22:23:04 +0000
Received: from mail-qv1-xf2f.google.com ([2607:f8b0:4864:20::f2f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVjUG-00005e-IA
 for openwrt-devel@lists.openwrt.org; Mon, 04 May 2020 22:22:58 +0000
Received: by mail-qv1-xf2f.google.com with SMTP id y19so79110qvv.4
 for <openwrt-devel@lists.openwrt.org>; Mon, 04 May 2020 15:22:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language;
 bh=Fs5K/Jc6LRmcylWVKRCAV/6qkqxLMYrjVbDddj9y9O8=;
 b=UT/n/yKW3nM4HguO86pDMTyClFOW7sAxn4EPfb5zh6IsgwMOjXNfWrJ1JI7ckW4/JG
 +ihqIzw/82sPDGg6Ed3rhq6qaAtaEjgNXb5TyzZGMUuJP3hLtdqLCcH1JWqMPAQOb4ru
 cnByvU3FYVXR4IetUlOHNO6sf2ZJvG3VzsMtejdqCJCki/FKa9baIMF6yANKh71Zs+a9
 ZGPsLhawNq7W1sJaz6AKN2dsFJ32G+kfPI00GUDEQ2A/562Ub7C/kELv28H0dmZPzTQX
 AJmulSl8Po/CJb6kMgG4+X9RZn1OOXUJpgXIkqp9d6pBXLJUcK1oaJBPyvC1mxy8aSb6
 4aoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language;
 bh=Fs5K/Jc6LRmcylWVKRCAV/6qkqxLMYrjVbDddj9y9O8=;
 b=XmcsrD5sptPYA+q1CL+aNTBxPrmG9XfMQ6rHHAPlJvwLdj/tk9ounocDRk0AO9qKqp
 U5UwypGNK0uOx3xfo9Cvk0r90NMJv15wF8UHFZ69cE8IYBV9DUzXBq5sfP9ixoF41sqx
 ygI8jxAdT9LnPKUfp2IcgZzxzj1niljVYHxuuFXEapsIb+mAEQSU4/c2TfocWn78LQnF
 JGqAXo+FYUB/zkBJPhvHP40yjZfJzvIjGccl2aQ/6bzx4ey5y9oMLUp/62jrMJb4s22M
 s62kcLEfAYA8bKDPNYkb5kPFP3z8DYtsf31Cll9NTCu5jtXrgPZO0zpk+AqgZeWdcj9y
 BIfw==
X-Gm-Message-State: AGi0PuZfIv178B+IBaAtVK23sV5ABEHpqzYr1l++trps4sF6fsF7Y9K6
 4se+5DEcadNRDdBVm1hSO4QSDxOU2WA=
X-Google-Smtp-Source: APiQypIha1e64NWFrZfTmT9t3l0tdCIXqvszEK06lHUWBmBfpWm4x/WzA81ykNWq/6YSbTY7SyZ8Dw==
X-Received: by 2002:a05:6214:ab2:: with SMTP id
 ew18mr247630qvb.159.1588630974641; 
 Mon, 04 May 2020 15:22:54 -0700 (PDT)
Received: from ?IPv6:2804:368:9:8000:6514:6223:d839:f6b3?
 ([2804:368:9:8000:6514:6223:d839:f6b3])
 by smtp.gmail.com with ESMTPSA id a16sm305947qko.92.2020.05.04.15.22.52
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 04 May 2020 15:22:53 -0700 (PDT)
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
References: <CABH8e0+-TaVCT7AvHRYyemTuzhx=BbNN1BaZPJQj6OJ6KJwM5A@mail.gmail.com>
 <CAKiAkGQg-Hiqw6isSmJYyLRWrTOpE0BZm4m+DPJPXBcNbiZCJw@mail.gmail.com>
 <8148b3ca-2eba-f833-8d0d-d158559edd79@gmail.com>
 <CAKiAkGS8Guy7Xfc+YqKZ6h4Y9+G44ACp8MZ25dxTBWUfcWAWcg@mail.gmail.com>
From: Fernando Frediani <fhfrediani@gmail.com>
Message-ID: <858549cb-f18a-36af-cb1c-dc02bc488d2b@gmail.com>
Date: Mon, 4 May 2020 19:22:52 -0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAKiAkGS8Guy7Xfc+YqKZ6h4Y9+G44ACp8MZ25dxTBWUfcWAWcg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_152256_630337_69EEC31D 
X-CRM114-Status: GOOD (  26.79  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f2f listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [fhfrediani[at]gmail.com]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.0 FREEMAIL_REPLY         From and body contain different freemails
Subject: Re: [OpenWrt-Devel] FULL CONE NAT in OpenWrt
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
Content-Type: multipart/mixed; boundary="===============7746256373145475737=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============7746256373145475737==
Content-Type: multipart/alternative;
 boundary="------------8DC61134BDA40C0108AA8383"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------8DC61134BDA40C0108AA8383
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Not all ISPs allow the user to request static PD. I like the idea of a 
static PD, but it is the ISP choice what they will give the user.
I can understand the issues you are describing but they really need to 
be fixed by other proper means, not by introducing another problem which 
is stimulating users to do NAT66 which is more than ugly thing to have. 
If this has to be used it is because of something else that is not 
working as it should and that is what should be fixed.

Internal sub-nets should be adjusted automatically either via RA or DHCPv6.
I believe there is currently a proposal in IETF to make this scenario 
work as expected when these changes happen and that is the correct way 
in my view to deal with this issue.

Regards
Fernando

On 04/05/2020 19:00, Joel Wirāmu Pauling wrote:
> Yup; ok i'm not going to get into a religious war about this. But I 
> will fight you on this and I have been around long enough to have been 
> on the other side of the fence and am talking from a position of 
> understanding it's not a great place we are in to need it. But we do:
>
> There are multiple use-cases for nat66. Here is the one that I have 
> now encountered several times, and which I believe likely affects a 
> large chunk of users.
>
> Uplink ISP provides /56 PD via /128 PtP link-net using public ranges 
> (normal so-far for dhcpv6 setup).
> Uplink ISP provides /32 v4 IP via dhcp
> End user requests static v4 ; ISP front end systems cope with this.
> Despite requesting static addressing the v6 /56 PD does not honor this 
> (there is an v6 update flag for this, but it's kind of useless if you 
> still have to renumber all your internal sub-subnets when this happens).
> --
> So every reboot/timeout of the v6 upstream - potentially 1000's of 
> endpoints internally all need to update their prefixes (suffixes are 
> relatively easy to maintain...)
> --
> ULA solves this for consistent internal addressing, BUT does not solve 
> it for Firewall rules for say things like Video Conference 
> bridges/webservers/FIP/OpenStack pools/OpenShift exist routes, etc 
> ,etc. That may be exposed via port-forwarding and Forwarding rules in 
> the Routers/Edge firewall in Openwrt in combination with some 
> $othernondhcpv6 aware config.
>
> NAT66 + ULA would solve for the above case. You still have the issue 
> of needing to update all the DNS records but that is largely 
> accomplishable via the same way DDNS for v4 is.
>
>
> ---
> So yup provide me with a better way to cope with the above that does 
> not need tunnels or require a provider uplink have static v6 
> allocations and I will wholeheartedly agree nat66 is not needed.
>
> -Joel
>
> IPv6 PD /56 is delivered from Uplink RSP (retail service provider); 
> MANY ISP's cannot and do-not allow for their PD announcements (via 
> dhcpv6) to be statically set, even when their ipv4 addressing
>
> On Tue, 5 May 2020 at 09:02, Fernando Frediani <fhfrediani@gmail.com 
> <mailto:fhfrediani@gmail.com>> wrote:
>
>     I believe NAT66 should not be stimulated in any sense.
>     One of the greatest things of IPv6 is to restore end to end
>     communication.
>
>     PDs should only change when there is a re-connection and the CPE
>     should be able able to handle that correctly updating its LAN
>     prefixes accordingly.
>     Stimulating and making that easy for general usage is like a crime
>     against IPv6. If one really needs to use that "chewing gun" he
>     must know what he is doing and to manually for that exception case.
>
>     Regards
>     Fernando
>
>     On 04/05/2020 17:52, Joel Wirāmu Pauling wrote:
>>     I am all for exposing Cone Nat in UCI / Firewall zones as an
>>     option to the masquerading configuration in a zone.
>>
>>     Also as much as I hate it nat66 for IPv6 needs to be exposed in
>>     the same place - specifically for mapping routable PD which
>>     change often to ULA's.
>>
>>     -Joel
>>
>>     On Tue, 5 May 2020 at 07:25, Gracias Amigou
>>     <puchapapa01@gmail.com <mailto:puchapapa01@gmail.com>> wrote:
>>
>>         Please add this package as official:
>>
>>         *Posts:*
>>
>>          1. xt_FULLCONENAT -- Implementing RFC 3489 full cone SNAT in
>>             OpenWrt
>>             <https://forum.openwrt.org/t/xt-fullconenat-implementing-rfc-3489-full-cone-snat-in-openwrt/14816>
>>          2. [12/8更新]OpenWrt 上实现 NAT1 (Full cone NAT) 的方法，无需
>>             DMZ/UPnP - OPENWRT专版
>>             <https://www.right.com.cn/forum/thread-319827-1-1.html>
>>          3. 从DNAT到netfilter内核子系统，浅谈Linux的Full Cone NAT实现 |
>>             ChionLab
>>             <https://blog.chionlab.moe/2018/02/09/full-cone-nat-with-linux/>
>>
>>         *
>>         *
>>         *Git:*
>>         • GitHub - LGA1150/openwrt-fullconenat: Netfilter and
>>         iptables extension for full cone NAT ported to OpenWrt.
>>         <https://github.com/LGA1150/openwrt-fullconenat>
>>         _______________________________________________
>>         openwrt-devel mailing list
>>         openwrt-devel@lists.openwrt.org
>>         <mailto:openwrt-devel@lists.openwrt.org>
>>         https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>>
>>
>>     _______________________________________________
>>     openwrt-devel mailing list
>>     openwrt-devel@lists.openwrt.org  <mailto:openwrt-devel@lists.openwrt.org>
>>     https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>     _______________________________________________
>     openwrt-devel mailing list
>     openwrt-devel@lists.openwrt.org
>     <mailto:openwrt-devel@lists.openwrt.org>
>     https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

--------------8DC61134BDA40C0108AA8383
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Not all ISPs allow the user to request static PD. I like the idea
      of a static PD, but it is the ISP choice what they will give the
      user.<br>
      I can understand the issues you are describing but they really
      need to be fixed by other proper means, not by introducing another
      problem which is stimulating users to do NAT66 which is more than
      ugly thing to have. If this has to be used it is because of
      something else that is not working as it should and that is what
      should be fixed.</p>
    <p>Internal sub-nets should be adjusted automatically either via RA
      or DHCPv6.<br>
      I believe there is currently a proposal in IETF to make this
      scenario work as expected when these changes happen and that is
      the correct way in my view to deal with this issue.</p>
    <p>Regards<br>
      Fernando<br>
    </p>
    <div class="moz-cite-prefix">On 04/05/2020 19:00, Joel Wirāmu
      Pauling wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAKiAkGS8Guy7Xfc+YqKZ6h4Y9+G44ACp8MZ25dxTBWUfcWAWcg@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div class="gmail_default"
          style="font-family:verdana,sans-serif">Yup; ok i'm not going
          to get into a religious war about this. But I will fight you
          on this and I have been around long enough to have been on the
          other side of the fence and am talking from a position of
          understanding it's not a great place we are in to need it. But
          we do:</div>
        <div class="gmail_default"
          style="font-family:verdana,sans-serif"><br>
        </div>
        <div class="gmail_default"
          style="font-family:verdana,sans-serif">There are multiple
          use-cases for nat66. Here is the one that I have now
          encountered several times, and which I believe likely affects
          a large chunk of users. <br>
        </div>
        <div class="gmail_default"
          style="font-family:verdana,sans-serif"><br>
        </div>
        <div class="gmail_default"
          style="font-family:verdana,sans-serif">Uplink ISP provides /56
          PD via /128 PtP link-net using public ranges (normal so-far
          for dhcpv6 setup).</div>
        <div class="gmail_default"
          style="font-family:verdana,sans-serif">Uplink ISP provides /32
          v4 IP via dhcp</div>
        <div class="gmail_default"
          style="font-family:verdana,sans-serif">End user requests
          static v4 ; ISP front end systems cope with this. <br>
        </div>
        <div class="gmail_default"
          style="font-family:verdana,sans-serif">Despite requesting
          static addressing the v6 /56 PD does not honor this (there is
          an v6 update flag for this, but it's kind of useless if you
          still have to renumber all your internal sub-subnets when this
          happens).</div>
        <div class="gmail_default"
          style="font-family:verdana,sans-serif">--</div>
        <div class="gmail_default"
          style="font-family:verdana,sans-serif">So every reboot/timeout
          of the v6 upstream - potentially 1000's of endpoints
          internally all need to update their prefixes (suffixes are
          relatively easy to maintain...)</div>
        <div class="gmail_default"
          style="font-family:verdana,sans-serif">--</div>
        <div class="gmail_default"
          style="font-family:verdana,sans-serif">ULA solves this for
          consistent internal addressing, BUT does not solve it for
          Firewall rules for say things like Video Conference
          bridges/webservers/FIP/OpenStack pools/OpenShift exist routes,
          etc ,etc. That may be exposed via port-forwarding and
          Forwarding rules in the Routers/Edge firewall in Openwrt in
          combination with some $othernondhcpv6 aware config.<br>
        </div>
        <div class="gmail_default"
          style="font-family:verdana,sans-serif"><br>
        </div>
        <div class="gmail_default"
          style="font-family:verdana,sans-serif">NAT66 + ULA would solve
          for the above case. You still have the issue of needing to
          update all the DNS records but that is largely accomplishable
          via the same way DDNS for v4 is. <br>
        </div>
        <div class="gmail_default"
          style="font-family:verdana,sans-serif"><br>
        </div>
        <div class="gmail_default"
          style="font-family:verdana,sans-serif"><br>
        </div>
        <div class="gmail_default"
          style="font-family:verdana,sans-serif">---</div>
        <div class="gmail_default"
          style="font-family:verdana,sans-serif">So yup provide me with
          a better way to cope with the above that does not need tunnels
          or require a provider uplink have static v6 allocations and I
          will wholeheartedly agree nat66 is not needed.<br>
        </div>
        <div class="gmail_default"
          style="font-family:verdana,sans-serif"><br>
        </div>
        <div class="gmail_default"
          style="font-family:verdana,sans-serif">-Joel<br>
        </div>
        <div class="gmail_default"
          style="font-family:verdana,sans-serif"><br>
        </div>
        <div class="gmail_default"
          style="font-family:verdana,sans-serif">IPv6 PD /56 is
          delivered from Uplink RSP (retail service provider); MANY
          ISP's cannot and do-not allow for their PD announcements (via
          dhcpv6) to be statically set, even when their ipv4 addressing<br>
        </div>
      </div>
      <br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Tue, 5 May 2020 at 09:02,
          Fernando Frediani &lt;<a href="mailto:fhfrediani@gmail.com"
            moz-do-not-send="true">fhfrediani@gmail.com</a>&gt; wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <p>I believe NAT66 should not be stimulated in any sense.<br>
              One of the greatest things of IPv6 is to restore end to
              end communication.</p>
            <p>PDs should only change when there is a re-connection and
              the CPE should be able able to handle that correctly
              updating its LAN prefixes accordingly.<br>
              Stimulating and making that easy for general usage is like
              a crime against IPv6. If one really needs to use that
              "chewing gun" he must know what he is doing and to
              manually for that exception case.</p>
            <p>Regards<br>
              Fernando<br>
            </p>
            <div>On 04/05/2020 17:52, Joel Wirāmu Pauling wrote:<br>
            </div>
            <blockquote type="cite">
              <div dir="ltr">
                <div class="gmail_default"
                  style="font-family:verdana,sans-serif">I am all for
                  exposing Cone Nat in UCI / Firewall zones as an option
                  to the masquerading configuration in a zone.</div>
                <div class="gmail_default"
                  style="font-family:verdana,sans-serif"><br>
                </div>
                <div class="gmail_default"
                  style="font-family:verdana,sans-serif">Also as much as
                  I hate it nat66 for IPv6 needs to be exposed in the
                  same place - specifically for mapping routable PD
                  which change often to ULA's. <br>
                </div>
                <div class="gmail_default"
                  style="font-family:verdana,sans-serif"><br>
                </div>
                <div class="gmail_default"
                  style="font-family:verdana,sans-serif">-Joel<br>
                </div>
              </div>
              <br>
              <div class="gmail_quote">
                <div dir="ltr" class="gmail_attr">On Tue, 5 May 2020 at
                  07:25, Gracias Amigou &lt;<a
                    href="mailto:puchapapa01@gmail.com" target="_blank"
                    moz-do-not-send="true">puchapapa01@gmail.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class="gmail_quote" style="margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">
                  <div dir="ltr">Please add this package as official:<br>
                    <div><br>
                    </div>
                    <div><b>Posts:</b></div>
                    <div>
                      <ol>
                        <li><a
href="https://forum.openwrt.org/t/xt-fullconenat-implementing-rfc-3489-full-cone-snat-in-openwrt/14816"
                            target="_blank" moz-do-not-send="true">xt_FULLCONENAT
                            -- Implementing RFC 3489 full cone SNAT in
                            OpenWrt</a></li>
                        <li><a
                            href="https://www.right.com.cn/forum/thread-319827-1-1.html"
                            target="_blank" moz-do-not-send="true">[12/8更新]OpenWrt
                            上实现 NAT1 (Full cone NAT) 的方法，无需 DMZ/UPnP -
                            OPENWRT专版</a></li>
                        <li><a
                            href="https://blog.chionlab.moe/2018/02/09/full-cone-nat-with-linux/"
                            target="_blank" moz-do-not-send="true">从DNAT到netfilter内核子系统，浅谈Linux的Full
                            Cone NAT实现 | ChionLab</a></li>
                      </ol>
                    </div>
                    <div><b><br>
                      </b></div>
                    <div><b>Git:</b><br>
                    </div>
                    <div>• <a
                        href="https://github.com/LGA1150/openwrt-fullconenat"
                        target="_blank" moz-do-not-send="true">GitHub -
                        LGA1150/openwrt-fullconenat: Netfilter and
                        iptables extension for full cone NAT ported to
                        OpenWrt.</a><br>
                    </div>
                  </div>
                  _______________________________________________<br>
                  openwrt-devel mailing list<br>
                  <a href="mailto:openwrt-devel@lists.openwrt.org"
                    target="_blank" moz-do-not-send="true">openwrt-devel@lists.openwrt.org</a><br>
                  <a
                    href="https://lists.openwrt.org/mailman/listinfo/openwrt-devel"
                    rel="noreferrer" target="_blank"
                    moz-do-not-send="true">https://lists.openwrt.org/mailman/listinfo/openwrt-devel</a><br>
                </blockquote>
              </div>
              <br>
              <fieldset></fieldset>
              <pre>_______________________________________________
openwrt-devel mailing list
<a href="mailto:openwrt-devel@lists.openwrt.org" target="_blank" moz-do-not-send="true">openwrt-devel@lists.openwrt.org</a>
<a href="https://lists.openwrt.org/mailman/listinfo/openwrt-devel" target="_blank" moz-do-not-send="true">https://lists.openwrt.org/mailman/listinfo/openwrt-devel</a>
</pre>
            </blockquote>
          </div>
          _______________________________________________<br>
          openwrt-devel mailing list<br>
          <a href="mailto:openwrt-devel@lists.openwrt.org"
            target="_blank" moz-do-not-send="true">openwrt-devel@lists.openwrt.org</a><br>
          <a
            href="https://lists.openwrt.org/mailman/listinfo/openwrt-devel"
            rel="noreferrer" target="_blank" moz-do-not-send="true">https://lists.openwrt.org/mailman/listinfo/openwrt-devel</a><br>
        </blockquote>
      </div>
    </blockquote>
  </body>
</html>

--------------8DC61134BDA40C0108AA8383--


--===============7746256373145475737==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7746256373145475737==--

